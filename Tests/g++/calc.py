from os import listdir
from json import loads, dumps
from os.path import isfile, join
onlyfiles = [f for f in listdir("./info/") if isfile(join("./info/", f))]
# print onlyfiles

edges = {}
def dfs_check(s, t):
    # global edges
    # print "dfs " + s +  " " +  t
    if s not in edges:
        return "error"
    # print edges
    for i in edges[s]:

        if i == t:
            return "correct"
        res = dfs_check(i, t)
        if res == "correct":
            return "correct"
    return "error"
iarrays = ["i" + str(i) for i in range(1, 257)]
def check_dep(s, t):
    # print s, t
    def analyze_name(s):
        stars = 0
        def is_func(s):
            space = s.find(" ")
            if space == "-1":
                return False
            j = s[space + 1 : ]
            return j[0] == "("
        while s[-1] == '*':
            stars += 1
            s = s[:-1]
        if is_func(s):
            return ("(...)", stars)
        elif s[:8] == "%\"class.":
            return (s[8:-1], stars)
        elif s[:7] == "%class.":
            return (s[7:-1], stars)
        elif s[:7] == "%union." or s[:8] == "%\"union.":
            return ("union", stars)
        elif s[:9] == "%\"struct.":
            return (s[9:-1], stars)
        elif s[:8] == "%struct.":
            return (s[8:], stars)
        elif s[0] == "{":
            return ("{}", stars)
        elif s[0] == "[":
            return ("[]", stars)
        elif s[0] == "<":
            return ("<>", stars)
        elif s in  iarrays + ["double", "float"]:
            return (s, stars)
        else:
            print "huge error"
            print s
            exit(0)

    star_ret = ""
    s, stars = analyze_name(s)
    t, start = analyze_name(t)
    
    if "std::" in s or "std::" in t:
        star_ret += "std|||"
    if "boost::" in s or "boost::" in t:
        star_ret += "boost|||"

    if s == "{}" or t == "{}":
        return star_ret + "getValueCast"
    if s == "[]" or s == "<>":
        return star_ret + "arrayCast"
    if s == "<>" or t == "<>":
        return star_ret + "vectorCast"
    if stars != start:
        star_ret = "starNEQ|||"
    if s in iarrays and \
        t in iarrays:
        return star_ret + "int2intCast"
    if s == "union":
        return star_ret + "unionSCast"
    if t == "union":
        return star_ret + "unionTCast"
    if s in iarrays and t not in \
        iarrays:
        return star_ret + "int2classCast"
    if t in iarrays and s not in \
        iarrays:
        return star_ret + "class2intCast"
    if s in iarrays and t  in ["float", "double"]:
        return star_ret + "int2doubleCast"
    if t in iarrays and s in ["double", "float"]:
        return star_ret + "double2intCast"
    if s in ["double", "float"] and t in ["double", "float"]:
        return star_ret + "double2doubleCast"
    if t == "(...)":
        return "toFunctionPtrCast"
    # print s, t
    def removeSuffixDigit(s):
        allD = 1
        if s.find(".") == -1:
            return s
        t = ""
        while s[-1] != ".":
            t = s[-1] + t
            if not(ord(s[-1]) >= ord('0') and ord(s[-1]) <= ord('9')):
                allD = 0
            s = s[: -1]
        s = s[:-1]
        if allD == 1:
            return s 
        else:
            return s + ":" + t
    s = removeSuffixDigit(s)
    t = removeSuffixDigit(t)
    if s not in edges or t not in edges:
        # return s + ' '  +  ' ' + t + " unknown"
        return "unrelated"
    
    

    if s == t:
        return "same"

    res = dfs_check(s, t)
    # exit(0)
    res2 = dfs_check(t, s)
    if res == "correct":
        return star_ret + "correct"
    if res2 == "correct":
        return star_ret + "up2down"
    return star_ret + "unrelated"

def calc_dep():
    with open("dep_res.txt", "w") as F:
        res = []
        with open("./querys.txt", "r") as f:
            for j in f.readlines():
                s, t, num = j.split("|||")
                num = int(num.strip())
                res.append(s + "|||" + t + "|||" + str(num) + "|||" + check_dep(s, t) + "\n")
            res = sorted(res, key = lambda x: x.split("|||")[-1].strip())
        for z in res:
            F.write(z)






for i in onlyfiles:
    with open("./info/" + i, "r") as f:
        for j in f.readlines():
            s = j.split("--->")[0]
            t = j.split("--->")[1].strip()
            if s not in edges:
                edges[s] = []
            if t not in edges:
                edges[t] = []
            ap = 0
            for k in edges[s]:
                if k == t:
                    ap = 1
            if ap == 0:
                edges[s].append(t)

            # print s, t
# print edges
with open("debug.txt", "w") as f:
    f.write(dumps(edges))
calc_dep()
# x = []
# for i in sums:
#     x.append((i[0], i[1], sums[i]))
# x = sorted(x, key = lambda x: -x[2])
# with open("querys.txt", "w") as f:
#     for i in x:
#         f.write(i[0] + "|||" + i[1] + "|||" + str(i[2]) + "\n")
# with open("totalInst.txt", "w") as f:
#     f.write(str(totalInst))