# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.18.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.18.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build

# Include any dependencies generated for this target.
include CMakeFiles/remove-bias.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/remove-bias.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/remove-bias.dir/flags.make

CMakeFiles/remove-bias.dir/remove-bias.cpp.o: CMakeFiles/remove-bias.dir/flags.make
CMakeFiles/remove-bias.dir/remove-bias.cpp.o: ../remove-bias.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/remove-bias.dir/remove-bias.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/remove-bias.dir/remove-bias.cpp.o -c /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/remove-bias.cpp

CMakeFiles/remove-bias.dir/remove-bias.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/remove-bias.dir/remove-bias.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/remove-bias.cpp > CMakeFiles/remove-bias.dir/remove-bias.cpp.i

CMakeFiles/remove-bias.dir/remove-bias.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/remove-bias.dir/remove-bias.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/remove-bias.cpp -o CMakeFiles/remove-bias.dir/remove-bias.cpp.s

# Object files for target remove-bias
remove__bias_OBJECTS = \
"CMakeFiles/remove-bias.dir/remove-bias.cpp.o"

# External object files for target remove-bias
remove__bias_EXTERNAL_OBJECTS =

remove-bias: CMakeFiles/remove-bias.dir/remove-bias.cpp.o
remove-bias: CMakeFiles/remove-bias.dir/build.make
remove-bias: CMakeFiles/remove-bias.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable remove-bias"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/remove-bias.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/remove-bias.dir/build: remove-bias

.PHONY : CMakeFiles/remove-bias.dir/build

CMakeFiles/remove-bias.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/remove-bias.dir/cmake_clean.cmake
.PHONY : CMakeFiles/remove-bias.dir/clean

CMakeFiles/remove-bias.dir/depend:
	cd /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles/remove-bias.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/remove-bias.dir/depend

