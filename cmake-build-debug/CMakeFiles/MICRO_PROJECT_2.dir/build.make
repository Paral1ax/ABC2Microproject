# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\CLion\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\CLion\CLion 2020.2.4\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\CLion\MICRO_PROJECT_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\CLion\MICRO_PROJECT_2\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/MICRO_PROJECT_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MICRO_PROJECT_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MICRO_PROJECT_2.dir/flags.make

CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.obj: CMakeFiles/MICRO_PROJECT_2.dir/flags.make
CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\CLion\MICRO_PROJECT_2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.obj"
	C:\MinGw\MinGw\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\MICRO_PROJECT_2.dir\main.cpp.obj -c C:\CLion\MICRO_PROJECT_2\main.cpp

CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.i"
	C:\MinGw\MinGw\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\CLion\MICRO_PROJECT_2\main.cpp > CMakeFiles\MICRO_PROJECT_2.dir\main.cpp.i

CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.s"
	C:\MinGw\MinGw\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\CLion\MICRO_PROJECT_2\main.cpp -o CMakeFiles\MICRO_PROJECT_2.dir\main.cpp.s

# Object files for target MICRO_PROJECT_2
MICRO_PROJECT_2_OBJECTS = \
"CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.obj"

# External object files for target MICRO_PROJECT_2
MICRO_PROJECT_2_EXTERNAL_OBJECTS =

MICRO_PROJECT_2.exe: CMakeFiles/MICRO_PROJECT_2.dir/main.cpp.obj
MICRO_PROJECT_2.exe: CMakeFiles/MICRO_PROJECT_2.dir/build.make
MICRO_PROJECT_2.exe: CMakeFiles/MICRO_PROJECT_2.dir/linklibs.rsp
MICRO_PROJECT_2.exe: CMakeFiles/MICRO_PROJECT_2.dir/objects1.rsp
MICRO_PROJECT_2.exe: CMakeFiles/MICRO_PROJECT_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\CLion\MICRO_PROJECT_2\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MICRO_PROJECT_2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MICRO_PROJECT_2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MICRO_PROJECT_2.dir/build: MICRO_PROJECT_2.exe

.PHONY : CMakeFiles/MICRO_PROJECT_2.dir/build

CMakeFiles/MICRO_PROJECT_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MICRO_PROJECT_2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MICRO_PROJECT_2.dir/clean

CMakeFiles/MICRO_PROJECT_2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\CLion\MICRO_PROJECT_2 C:\CLion\MICRO_PROJECT_2 C:\CLion\MICRO_PROJECT_2\cmake-build-debug C:\CLion\MICRO_PROJECT_2\cmake-build-debug C:\CLion\MICRO_PROJECT_2\cmake-build-debug\CMakeFiles\MICRO_PROJECT_2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MICRO_PROJECT_2.dir/depend
