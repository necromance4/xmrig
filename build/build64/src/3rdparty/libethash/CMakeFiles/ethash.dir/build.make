# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/kissm/source/repos/xmrig

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/kissm/source/repos/xmrig/build/build64

# Include any dependencies generated for this target.
include src/3rdparty/libethash/CMakeFiles/ethash.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/3rdparty/libethash/CMakeFiles/ethash.dir/compiler_depend.make

# Include the progress variables for this target.
include src/3rdparty/libethash/CMakeFiles/ethash.dir/progress.make

# Include the compile flags for this target's objects.
include src/3rdparty/libethash/CMakeFiles/ethash.dir/flags.make

src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/flags.make
src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/includes_C.rsp
src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj: ../../src/3rdparty/libethash/ethash_internal.c
src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/kissm/source/repos/xmrig/build/build64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj -MF CMakeFiles/ethash.dir/ethash_internal.c.obj.d -o CMakeFiles/ethash.dir/ethash_internal.c.obj -c C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/ethash_internal.c

src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ethash.dir/ethash_internal.c.i"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/ethash_internal.c > CMakeFiles/ethash.dir/ethash_internal.c.i

src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ethash.dir/ethash_internal.c.s"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/ethash_internal.c -o CMakeFiles/ethash.dir/ethash_internal.c.s

src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/flags.make
src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/includes_C.rsp
src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj: ../../src/3rdparty/libethash/keccakf800.c
src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj: src/3rdparty/libethash/CMakeFiles/ethash.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/kissm/source/repos/xmrig/build/build64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj -MF CMakeFiles/ethash.dir/keccakf800.c.obj.d -o CMakeFiles/ethash.dir/keccakf800.c.obj -c C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/keccakf800.c

src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ethash.dir/keccakf800.c.i"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/keccakf800.c > CMakeFiles/ethash.dir/keccakf800.c.i

src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ethash.dir/keccakf800.c.s"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && C:/msys64/mingw64/bin/cc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash/keccakf800.c -o CMakeFiles/ethash.dir/keccakf800.c.s

# Object files for target ethash
ethash_OBJECTS = \
"CMakeFiles/ethash.dir/ethash_internal.c.obj" \
"CMakeFiles/ethash.dir/keccakf800.c.obj"

# External object files for target ethash
ethash_EXTERNAL_OBJECTS =

src/3rdparty/libethash/libethash.a: src/3rdparty/libethash/CMakeFiles/ethash.dir/ethash_internal.c.obj
src/3rdparty/libethash/libethash.a: src/3rdparty/libethash/CMakeFiles/ethash.dir/keccakf800.c.obj
src/3rdparty/libethash/libethash.a: src/3rdparty/libethash/CMakeFiles/ethash.dir/build.make
src/3rdparty/libethash/libethash.a: src/3rdparty/libethash/CMakeFiles/ethash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/kissm/source/repos/xmrig/build/build64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libethash.a"
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && $(CMAKE_COMMAND) -P CMakeFiles/ethash.dir/cmake_clean_target.cmake
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ethash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/3rdparty/libethash/CMakeFiles/ethash.dir/build: src/3rdparty/libethash/libethash.a
.PHONY : src/3rdparty/libethash/CMakeFiles/ethash.dir/build

src/3rdparty/libethash/CMakeFiles/ethash.dir/clean:
	cd C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash && $(CMAKE_COMMAND) -P CMakeFiles/ethash.dir/cmake_clean.cmake
.PHONY : src/3rdparty/libethash/CMakeFiles/ethash.dir/clean

src/3rdparty/libethash/CMakeFiles/ethash.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/kissm/source/repos/xmrig C:/Users/kissm/source/repos/xmrig/src/3rdparty/libethash C:/Users/kissm/source/repos/xmrig/build/build64 C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash C:/Users/kissm/source/repos/xmrig/build/build64/src/3rdparty/libethash/CMakeFiles/ethash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/3rdparty/libethash/CMakeFiles/ethash.dir/depend

