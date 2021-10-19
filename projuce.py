import os
import sys
import shutil
from pathlib import Path

print("Welcome to projuce.py")

ostype = 0

while ostype != 1 and ostype != 2:
    print(
        """Choose OS:
        1. Mac
        2. Linux"""
    )
    user = input()
    ostype = int(user)


option = 0

while option > 4 or option < 1:
    print(
        """Choose an option:

    1. AudioApp
    2. AudioPlugin
    3. GuiApp
    4. ConsoleApp
    5. Exit
"""
    )
    option = input()
    option = int(option)
    if option == 5:
        sys.exit()

apps = ["AudioApp/", "AudioPlugin/", "GuiApp/", "ConsoleApp/"]

print("You've chosen to create a " + apps[option - 1][0:-1])


# Get Some Parameters from the user

print("Please type a project name: ")

projectName = input()


print("Please type the absolute file path for destination")

destination = input()

# Copy the template to a new path and store the new paths name in memory

shutil.copytree(Path.cwd() / apps[option - 1], Path(destination) / projectName)

newPath = destination + "/" + projectName + "/"

# remove the cmake-build-debug section for cLion

for folderName, subfolders, filenames in os.walk(newPath):
    # print("Folder:" + folderName)
    for subfolder in subfolders:
        # print("subfolder: " + subfolder)
        if str(subfolder) == "cmake-build-debug":
            shutil.rmtree(Path(newPath + "cmake-build-debug"))

    # for filename in filenames:
    # print("filename: " + filename)

# Open up the file to store as a list and make some modifications

cMakeFile = open(Path(newPath) / "CMakeLists.txt")

cMakeProjectName = "set(projectName " + projectName + ")"

cMakeFileAsString = cMakeFile.read()

cMakeFileAsLines = cMakeFileAsString.split("\n")

i = 0


# Change a bunch of lines based on

for line in cMakeFileAsLines:
    if "set(projectName" in line:
        print("/n" + cMakeFileAsLines[i] + " changed to " + cMakeProjectName)
        cMakeFileAsLines[i] = cMakeProjectName

    if ostype == 1 and "#MAC" in line:
        print(
            "/n"
            + cMakeFileAsLines[i + 1]
            + " changed to "
            + cMakeFileAsLines[i + 1][1:]
        )
        cMakeFileAsLines[i + 1] = cMakeFileAsLines[i + 1][1:]

    if ostype == 2 and "#LINUX" in line:
        print(
            "/n"
            + cMakeFileAsLines[i + 1]
            + " changed to "
            + cMakeFileAsLines[i + 1][1:]
        )
        cMakeFileAsLines[i + 1] = cMakeFileAsLines[i + 1][1:]

    i += 1

newCMakeLists = open(newPath + "new_CMakeLists.txt", "a")

for line in cMakeFileAsLines:
    newCMakeLists.write(line + "\n")

cMakeFile.close()
newCMakeLists.close()

shutil.move(newPath + "new_CMakeLists.txt", newPath + "CMakeLists.txt")
