# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\LSLT Software Development\Indie\Jargon\testing\jargon"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/jargon.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/jargon.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jargon.dir/flags.make

CMakeFiles/jargon.dir/main.c.obj: CMakeFiles/jargon.dir/flags.make
CMakeFiles/jargon.dir/main.c.obj: CMakeFiles/jargon.dir/includes_C.rsp
CMakeFiles/jargon.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jargon.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\jargon.dir\main.c.obj -c "C:\LSLT Software Development\Indie\Jargon\testing\jargon\main.c"

CMakeFiles/jargon.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/jargon.dir/main.c.i"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\LSLT Software Development\Indie\Jargon\testing\jargon\main.c" > CMakeFiles\jargon.dir\main.c.i

CMakeFiles/jargon.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/jargon.dir/main.c.s"
	C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\LSLT Software Development\Indie\Jargon\testing\jargon\main.c" -o CMakeFiles\jargon.dir\main.c.s

# Object files for target jargon
jargon_OBJECTS = \
"CMakeFiles/jargon.dir/main.c.obj"

# External object files for target jargon
jargon_EXTERNAL_OBJECTS =

jargon.exe: CMakeFiles/jargon.dir/main.c.obj
jargon.exe: CMakeFiles/jargon.dir/build.make
jargon.exe: CMakeFiles/jargon.dir/linklibs.rsp
jargon.exe: CMakeFiles/jargon.dir/objects1.rsp
jargon.exe: CMakeFiles/jargon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable jargon.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\jargon.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jargon.dir/build: jargon.exe
.PHONY : CMakeFiles/jargon.dir/build

CMakeFiles/jargon.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\jargon.dir\cmake_clean.cmake
.PHONY : CMakeFiles/jargon.dir/clean

CMakeFiles/jargon.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\LSLT Software Development\Indie\Jargon\testing\jargon" "C:\LSLT Software Development\Indie\Jargon\testing\jargon" "C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug" "C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug" "C:\LSLT Software Development\Indie\Jargon\testing\jargon\cmake-build-debug\CMakeFiles\jargon.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/jargon.dir/depend

