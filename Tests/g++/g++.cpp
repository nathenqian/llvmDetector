#include <cstdio>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <cstring>
#include <vector>
using namespace std;
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
            || v == "conftest.cpp")
            return true;
    }
    return false;
}

string analyzeType(string &s) {
    if (s == "") {
        return "undefined";
    }

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
            fileName = ""; targetName = arg[i + 1]; targetType = analyzeType(arg[i + 1]);
            for (int j = (int)(targetName.size()) - 1; j >= 0 && targetName[j] != '/'; j --) {
                string temp = ""; temp += targetName[j];
                fileName = temp + fileName;
                // cout << fileName <<
            }
        }
    }
}
string translate() {
    string ret = " -S -emit-llvm";
    for (int i = 0; i < int(arg.size()); i ++) {
        if (arg[i] == "-o") {
            if (targetType == "o") {
                ret += " -o /tests/llfile/" + fileName.substr(0, fileName.size() - 1) + "ll";
                i += 1;
                continue;
            } else 
            if (targetType == "so") {
                return "";
            } else 
            if (targetType == "exec") {
                return "";
            }
        }
        ret += " " + arg[i];
    }
    // if (arg[i] == "-o") {
        if (targetType == "o") {
            // ret += " -"
            replace(ret, "-c ", "");
        } else 
        if (targetType == "so") {
            return "";
        } else 
        if (targetType == "exec") {
            return "";
        }
    // }
    return ret;
}
int main(int args, char **argv) {
    string CC = "clang++";
    string s = CC + " ";
    
    for (int i = 1; i < args; i ++) {
        arg.push_back(string(argv[i]));
    }

    bool need_record = true;

    if (checkVersion()) {
        need_record = false;
    }
    checkTarget();
    string t = translate();
    // cout <<targetName <<  " " << targetType


    for (int i = 0; i < arg.size(); i ++) {
        // printf("%s\n", argv[i]);
        s = s + " " + change(arg[i]);
    }


    if (need_record) {
        FILE *f = fopen("/tests/res/llvm.txt", "a+");
        if (t.size() > 0) {
            t = change(t) + " -g"; 
            system((CC + t).c_str());
            fprintf(f, "%s\n",  (CC + t).c_str());
        }
        fclose(f);
    }

    FILE *f = fopen("/tests/res/my.txt", "a+");
        fprintf(f, "%s\n",  (s).c_str());
    fclose(f);

    system((s).c_str());



}
