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
include CMakeFiles/triangle-sweep.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/triangle-sweep.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/triangle-sweep.dir/flags.make

CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o: CMakeFiles/triangle-sweep.dir/flags.make
CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o: ../triangle-sweep.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o -c /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle-sweep.cpp

CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle-sweep.cpp > CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.i

CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle-sweep.cpp -o CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.s

# Object files for target triangle-sweep
triangle__sweep_OBJECTS = \
"CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o"

# External object files for target triangle-sweep
triangle__sweep_EXTERNAL_OBJECTS =

triangle-sweep: CMakeFiles/triangle-sweep.dir/triangle-sweep.cpp.o
triangle-sweep: CMakeFiles/triangle-sweep.dir/build.make
triangle-sweep: CMakeFiles/triangle-sweep.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable triangle-sweep"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/triangle-sweep.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/triangle-sweep.dir/build: triangle-sweep

.PHONY : CMakeFiles/triangle-sweep.dir/build

CMakeFiles/triangle-sweep.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/triangle-sweep.dir/cmake_clean.cmake
.PHONY : CMakeFiles/triangle-sweep.dir/clean

CMakeFiles/triangle-sweep.dir/depend:
	cd /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles/triangle-sweep.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/triangle-sweep.dir/depend

