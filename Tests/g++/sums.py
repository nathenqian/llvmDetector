from os import listdir
from os.path import isfile, join
onlyfiles = [f for f in listdir("./stat/") if isfile(join("./stat/", f))]
# print onlyfiles
sums = {}
totalInst = 0
for i in onlyfiles:
    with open("./stat/" + i, "r") as f:
        for j in f.readlines():
            if j.find("|||") == -1:
                totalInst += int(j)
                continue
            s = j.split("|||")[0]
            t = j.split("|||")[1].strip()
            if (s, t) not in sums:
                sums[(s, t)] = 0
            sums[(s, t)] += 1

            # print s, t
x = []
for i in sums:
    x.append((i[0], i[1], sums[i]))
x = sorted(x, key = lambda x: -x[2])
with open("querys.txt", "w") as f:
    for i in x:
        f.write(i[0] + "|||" + i[1] + "|||" + str(i[2]) + "\n")
with open("totalInst.txt", "w") as f:
    f.write(str(totalInst))