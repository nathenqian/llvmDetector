#include "debug_parser.h"
static void qassert(bool s, string info = "") {
    if (!s) {
        errs() << "qssert error is " << info << "\n";
        exit(0);
    }

}
string int2str(int i) {
    char buff[20];
    sprintf(buff, "%d", i);
    return string(buff);
}
#define isDigit(x) ((x) >= '0' && (x) <= '9')
bool isNumber(string i) {
    for (auto n : i)
        if (!isDigit(n))
            return false;
    return true;
}
int str2int(string n) {
    if (!isNumber(n))
        return -1;
    int ret = 0;
    for (int i = 0; i < n.size(); i ++)
        ret = ret * 10 + n[i] - '0';
    return ret;
}
string shrinkPath(string &path) {
    if (path == "") exit(0);
    int i = path.size() - 1;
    string ret = "";
    for (; i >= 0; i --) {
        if (path[i] == '/')
            return ret;
        else {
            string temp = "";
            temp += path[i];
            ret = temp + ret;
        }
    }
    return ret;
}
string appendLL(string &p) {
    int i = p.size() - 1;
    // return p + ".ll";
    for (; i >= 0; i --) {
        if (p[i] == '.') {
            return p.substr(0,i) + ".ll";
        }
    }
}



int getNumber(int &index, string &line) {
    //01,
    //  ^
    int ret = 0;
    qassert(isDigit(line[index]), "get number error");
    if (!isDigit(line[index])) {
        return -2;
    }
    while (index < line.size() && isDigit(line[index])) {
        ret = ret * 10 + line[index] - '0';
        index += 1;
    }
    return ret;
}

void pass(int &index, string s) {
    index += s.size();
}

void until(int &index, char s, string &line) {
    // asssd
    //.     ^
    while (index < line.size() && line[index] != s) {
        index += 1;
    }
    qassert(index != line.size(), "until");
    index += 1;
    return;
}

vector<string> parseParameter(int &index, string &line) {
    // (1,2,3,3,4)
    //            ^
    vector<string> ret;
    for (; ;) {
        string temp = "";
        #define isEnd(x) ((x == ')') || (x == '}') || (x == ','))
        bool inQuota = false;
        while (index < line.size() && (!isEnd(line[index]) || inQuota)) {
            if (line[index] == '\"')
                inQuota ^= 1;
            temp += line[index];
            index += 1;
        }
        if (temp != "") {
            ret.push_back(temp);
        }
        if (line[index] == ')' || line[index] == '}')
            break;
        else
            pass(index, ", ");
    }
    index += 1;
    return ret;
}



bool match(int &index, string s, string &line) {
    if (line.size() - index >= s.size() && line.substr(index, s.size()) == s) {
        index += s.size();
        return true;
    }
    return false;
}

DInfo* processLine(string line) {
    if (line.size() < 2)
        return NULL;
    if (line[0] != '!' || !isDigit(line[1]))
        return NULL;
    // errs() << line << "\n";
    int index = 1, nex;
    int id = getNumber(index, line);

    pass(index, " = ");
    until(index, '!', line);
    DInfo *ret = NULL;
    if (match(index, "{", line)) {
        ret = new DInfoVec(id);
    } else 
    if (match(index, "DICompositeType(", line)) {
        ret = new DInfoComposite(id);
    } else 
    if (match(index, "DIDerivedType(", line)) {
        ret = new DInfoDerive(id);
    } else 
    if (match(index, "DIBasicType(", line)) {
        ret = new DInfoBasic(id);
    } else 
    if (match(index, "DINamespace(", line)) {
        ret = new DInfoNameSpace(id);
    } else 
    if (match(index, "DIFile(", line)) {
        ret = new DInfoFile(id);
    } else {
        ret = new DInfoEmpty(id);
    }


    vector<string> para = parseParameter(index, line);
    // for (auto i : para) {
        // errs() << i << "\n";
    // }
    if (ret->parse(para)) {
        return new DInfoEmpty(id);
    }
    // errs() << ret->toString() << "\n\n";
    return ret;
}

void DebugParser::process(string path) {
    string realPath = shrinkPath(path);
    realPath = appendLL(realPath);
    ifstream infile(realPath);

    string line;
    while (getline(infile, line)) {
        // errs() << line << "\n";
        rawLines.push_back(line);
        DInfo *dinfo = processLine(line);
        if (dinfo == NULL)
            continue;
        infos[dinfo->id] = dinfo; 
        // errs() << (dinfo->id) << " " << dinfo << "\n";
    }

    for (auto i : infos) {
        i.second->genPtr(&infos);
    }



}   

    
