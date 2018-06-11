import argparse
from json import loads, dumps

parser = argparse.ArgumentParser(description='proj name')
parser.add_argument('proj', metavar='proj', nargs='+')
proj = parser.parse_args().proj[0]
# print parser.proj
print proj
l = []
with open("dep_res.txt", "r") as f:
    l = f.readlines()
G = None
with open("global_res.txt", "r") as f:
    G = loads(f.read())
# instruction
# bitcast number
#     different type
#     std, boost
# *** not equal
bitcast_number, instruction = 0, 0
raw = {"getValueCast" : 0,
"arrayCast" : 0,
"vectorCast" : 0,
"int2intCast" : 0,
"unionSCast" : 0,
"unionTCast" : 0,
"int2classCast" : 0,
"class2intCast" : 0,
"int2doubleCast" : 0,
"double2intCast" : 0,
"double2doubleCast" : 0,
"toFunctionPtrCast" : 0,
"unrelated" : 0,
"correct" : 0,
"up2down" : 0,
"sameClassTemplateCast" : 0}
from copy import deepcopy
types = {
    "local" : {"neq" : 0, "bitcastNumber" : 0, "data" : deepcopy(raw)},
    "std" : {"neq" : 0, "bitcastNumber" : 0, "data" : deepcopy(raw)},
    "boost" : {"neq" : 0, "bitcastNumber" : 0, "data" : deepcopy(raw)}
}

with open("totalInst.txt", "r") as f:
    instruction = int(f.read())

for i in l:
    j = i.split("|||")
    # domain = "local"
    def insert(line, dic):
        cnt = int(j[2])
        if "starNEQ" in line:
            dic["neq"] += cnt
        dic["bitcastNumber"] += cnt
        global bitcast_number
        bitcast_number += cnt
        dic["data"][j[-1].strip()] += cnt
    if "std" in j:
        insert(j, types["std"])
    if "boost" in j:
        insert(j, types["boost"])
    if "std" not in j and "boost" not in j:
        insert(j, types["local"])
G[proj] = {"inst" : instruction, "bitInst": bitcast_number, "data" : types}
with open("global_res.txt", "w") as f:
    f.write(dumps(G, indent = 4))