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
include CMakeFiles/triangle.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/triangle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/triangle.dir/flags.make

CMakeFiles/triangle.dir/triangle.cpp.o: CMakeFiles/triangle.dir/flags.make
CMakeFiles/triangle.dir/triangle.cpp.o: ../triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/triangle.dir/triangle.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/triangle.dir/triangle.cpp.o -c /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle.cpp

CMakeFiles/triangle.dir/triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/triangle.dir/triangle.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle.cpp > CMakeFiles/triangle.dir/triangle.cpp.i

CMakeFiles/triangle.dir/triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/triangle.dir/triangle.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/triangle.cpp -o CMakeFiles/triangle.dir/triangle.cpp.s

# Object files for target triangle
triangle_OBJECTS = \
"CMakeFiles/triangle.dir/triangle.cpp.o"

# External object files for target triangle
triangle_EXTERNAL_OBJECTS =

triangle: CMakeFiles/triangle.dir/triangle.cpp.o
triangle: CMakeFiles/triangle.dir/build.make
triangle: CMakeFiles/triangle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable triangle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/triangle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/triangle.dir/build: triangle

.PHONY : CMakeFiles/triangle.dir/build

CMakeFiles/triangle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/triangle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/triangle.dir/clean

CMakeFiles/triangle.dir/depend:
	cd /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1 /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build /Users/stejaraiulia/GitHub/MAT240B-2021-Assignment-1/build/CMakeFiles/triangle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/triangle.dir/depend

