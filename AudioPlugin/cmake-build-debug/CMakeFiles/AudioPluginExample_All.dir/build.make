# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin/cmake-build-debug

# Utility rule file for AudioPluginExample_All.

# Include any custom commands dependencies for this target.
include CMakeFiles/AudioPluginExample_All.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AudioPluginExample_All.dir/progress.make

AudioPluginExample_All: CMakeFiles/AudioPluginExample_All.dir/build.make
.PHONY : AudioPluginExample_All

# Rule to build all files generated by this target.
CMakeFiles/AudioPluginExample_All.dir/build: AudioPluginExample_All
.PHONY : CMakeFiles/AudioPluginExample_All.dir/build

CMakeFiles/AudioPluginExample_All.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AudioPluginExample_All.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AudioPluginExample_All.dir/clean

CMakeFiles/AudioPluginExample_All.dir/depend:
	cd /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin/cmake-build-debug /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin/cmake-build-debug /home/edgallyot/drives/2TB_SSD/Documents/JUCE_Templates/AudioPlugin/cmake-build-debug/CMakeFiles/AudioPluginExample_All.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AudioPluginExample_All.dir/depend

