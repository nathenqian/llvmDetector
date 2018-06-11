#include <cstdio>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <cstring>
#include <vector>
using namespace std;
// #undefine __GNUC__
vector<string> arg;
string fileName;
string targetName;
string targetType;
// string blackList[] = {"CMakeCXXCompilerId.cpp", "testCXXCompiler.cxx"}
string change(string a) {
    string ret;
    int len = a.size();
    for (int i = 0; i < len; i ++) {
        if (a[i] == '\"')
            ret += "\\\"";
        else
            ret += a[i];
    }
    return ret;
}

bool replace(std::string& str, const std::string& from, const std::string& to) {
    size_t start_pos = str.find(from);
    if(start_pos == std::string::npos)
        return false;
    str.replace(start_pos, from.length(), to);
    return true;
}

bool checkVersion() {
    for (int i = 0; i < arg.size(); i ++) {
        string &v = arg[i];
        if (v == "-v" || v == "-V" || v == "--version" || v == "-qversion"
            || v == "conftest.cpp" || v.find("conftest") != string::npos)
            return true;
    }
    return false;
}

string analyzeType(string &s) {
    if (s == "") {
        return "undefined";
    }
    if (s.find(".so") != string::npos)
        return "so";
    int index = s.size() - 1;
    while (index >= 0 && s[index] != '.' && s[index] != '/') {
        index --;
    }
    // cout << index << ' ' << s.substr(index + 1, string::npos) << endl;
    if (index == -1 || s[index] == '/') {
        return "exec";
    } else
        return s.substr(index + 1, string::npos);
}

void checkTarget() {
    for (int i = 0; i < int(arg.size()) - 1; i ++) {
        if (arg[i] == "-o") {
            fileName = ""; 
            targetName = arg[i + 1]; 
            targetType = analyzeType(arg[i + 1]);
            for (int j = (int)(targetName.size()) - 1; j >= 0 && targetName[j] != '/'; j --) {
                string temp = ""; temp += targetName[j];
                fileName = temp + fileName;
                // cout << fileName << ' ' << targetType << endl;
            }
        }
    }
}
string translate() {
    string ret = "";
    for (int i = 0; i < int(arg.size()); i ++) {
        if (arg[i] == "-o") {
            if (targetType == "o") {
                string temp = fileName.substr(0, fileName.size() - 1) + "ll";
                replace(temp, ".cpp", "");
                replace(temp, ".cxx", "");
                replace(temp, ".h", "");
                replace(temp, ".hpp", "");
                ret += " -o /tests/llfile/" + temp + " ";
                i += 1;
                continue;
            } else 
            if (targetType == "so") {
                string temp = fileName.substr(0, fileName.find(".so")) + ".ll";
                replace(temp, ".cpp", "");
                replace(temp, ".cxx", "");
                replace(temp, ".h", "");
                replace(temp, ".hpp", "");
                ret += " -o /tests/llfile/share/" + temp + " ";
                i += 1;
                continue;
                // return "";
            } else 
            if (targetType == "exec") {
                string temp = fileName + ".ll";
                replace(temp, ".cpp", "");
                replace(temp, ".cxx", "");
                replace(temp, ".h", "");
                replace(temp, ".hpp", "");
                ret += " -o /tests/llfile/exe/" + temp + " ";
                i += 1;
                continue;
                // return "";
            }
        } else {
            if (targetType == "so" || targetType == "exec") {
                int size = arg[i].size();
                if (arg[i].size() == 0 || (arg[i][0] == '-') || 
                    (size >= 2 && arg[i][size - 2] == '.' && arg[i][size - 1] == 'a')) continue;
                if (size >= 3 && arg[i][size - 3] == '.' && arg[i][size - 2] == 's'
                    && arg[i][size - 1] == 'o') {
                    string n = "";
                    for (int z = size - 3; z >= 0 && arg[i][z] != '/'; z --) {
                        string temp = ""; temp += arg[i][z];
                        n = temp + n;
                    }
                    replace(n, ".cpp", "");
                    replace(n, ".cxx", "");
                    replace(n, ".h", "");
                    replace(n, ".hpp", "");
                    ret += "/tests/llfile/" + n + ".ll ";
                    continue;
                }
                if (size >= 2 && arg[i][size - 2] == '.' && arg[i][size - 1] == 'o') {
                    string n = "";
                    for (int z = size - 3; z >= 0 && arg[i][z] != '/'; z --) {
                        string temp = ""; temp += arg[i][z];
                        n = temp + n;
                    }
                    replace(n, ".cpp", "");
                    replace(n, ".cxx", "");
                    replace(n, ".h", "");
                    replace(n, ".hpp", "");
                    ret += "/tests/llfile/" + n + ".ll ";

                    continue;
                } 
            }
        }
        ret += " " + arg[i];
    }
    // cout << ret << endl;
    // if (arg[i] == "-o") {
    if (targetType == "o") {
        replace(ret, "-c ", "");
        ret =  " -S -emit-llvm " + ret;
    } else 
    if (targetType == "so") {
        replace(ret, "-shared ", "");
    } 
    cout << ret << endl;
    // }
    return ret;
}

int main(int args, char **argv) {
    string CC = "/LLVM_ROOT/build/bin/clang++";
    string CC2 = "/LLVM_ROOT/build/bin/clang";
    string origin = CC + " ";
    
    for (int i = 1; i < args; i ++) {
        arg.push_back(string(argv[i]));
    }

    bool need_record = true;

    if (checkVersion()) {
        need_record = false;
    }
    checkTarget();
    string t = translate();
    cout << targetName <<  " " << targetType << endl;


    for (int i = 0; i < arg.size(); i ++) {
        // printf("%s\n", argv[i]);
        origin = origin + " " + change(arg[i]);
    }


    if (need_record) {
        FILE *f = fopen("/tests/res/llvm.txt", "a+");
        if (t.size() > 0) {
            if (targetType == "o") {
                t = change(t) + " -g"; 
                system((CC + t).c_str());
                fprintf(f, "%s\n",  (CC + t).c_str());
            } else {
                string ccc = "llvm-link -S ";
                t = change(t);
                // t = replaceOtoLL(t);
                // system((ccc + t).c_str());
                // fprintf(f, "%s\n",  (ccc + t).c_str());
            } 
            // system(string("g++ ") + t + " -fdump-class-hierarchy");
            // } else {
                // system((CC2 + t).c_str());
            // }
            
            
        }
        fclose(f);
    }

    FILE *f = fopen("/tests/res/my.txt", "a+");
        fprintf(f, "%s\n",  (origin).c_str());
    fclose(f);

    int v = system((origin).c_str());
    // printf("%d\n", v);
    f = fopen("/tests/res/my.txt", "a+");
        fprintf(f, "%d\n",  v);
    fclose(f);

    // return v;
    if (v != 0)
        return 1;
    return 0;



}
