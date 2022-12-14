import csv
import os

assertion_id = dict()

with open('wot-discovery/testing/template.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        if (row[1]!="ID"):
            assertion_id[row[1]]=0

resdir = "data/input_2022/Discovery/Results"
csvs = [f for f in os.listdir(resdir) if os.path.isfile(resdir+"/"+f) & f.endswith(".csv")]

for f in csvs:
    with open(resdir+"/"+f) as file:
        reader = csv.reader(file)
        for row in reader:
            if (row[0]!="ID") & (row[1] == "pass") & (row[0] in assertion_id):
                assertion_id[row[0]] += 1

covered = 0
for a in assertion_id:
    if assertion_id[a] >= 2:
        covered += 1

print(f'### Discovery spec assertion coverage report')
print(f'- coverage: {100*covered/len(assertion_id):.2f}%')
print(f'- at-risk assertions: {len(assertion_id)-covered}')
print(f'<details>')
print(f'  <summary>list of at-risk assertions</summary>')
print(f'')
for x in assertion_id:
    if assertion_id[x] < 2:
        print(f'  - [{x}](https://w3c.github.io/wot-discovery#{x}): pass={assertion_id[x]}')
print(f'</details>')
