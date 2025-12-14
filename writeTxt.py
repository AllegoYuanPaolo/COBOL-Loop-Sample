import shutil
import os

inputFile = input("Enter file name: ")
fileName = inputFile.split(".")
file = fileName[0]


if not os.path.isdir('txtFiles'):
    os.mkdir('txtFiles')



with open(inputFile, "r") as source:
    with open(f"{file}.txt", "w") as dest:
        for line in source:
            dest.write(line)


txtList = os.listdir("./")
for item in txtList:
    if item.endswith(".txt"):
        shutil.move(item, "txtFiles")
