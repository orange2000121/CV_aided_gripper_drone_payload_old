# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/airlab/Desktop/CV_aided_gripper_drone_payload/test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build

# Include any dependencies generated for this target.
include CMakeFiles/test_cXX.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_cXX.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_cXX.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_cXX.dir/flags.make

CMakeFiles/test_cXX.dir/arucoPos.cpp.o: CMakeFiles/test_cXX.dir/flags.make
CMakeFiles/test_cXX.dir/arucoPos.cpp.o: /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/arucoPos.cpp
CMakeFiles/test_cXX.dir/arucoPos.cpp.o: CMakeFiles/test_cXX.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_cXX.dir/arucoPos.cpp.o"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_cXX.dir/arucoPos.cpp.o -MF CMakeFiles/test_cXX.dir/arucoPos.cpp.o.d -o CMakeFiles/test_cXX.dir/arucoPos.cpp.o -c /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/arucoPos.cpp

CMakeFiles/test_cXX.dir/arucoPos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_cXX.dir/arucoPos.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/arucoPos.cpp > CMakeFiles/test_cXX.dir/arucoPos.cpp.i

CMakeFiles/test_cXX.dir/arucoPos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_cXX.dir/arucoPos.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/arucoPos.cpp -o CMakeFiles/test_cXX.dir/arucoPos.cpp.s

# Object files for target test_cXX
test_cXX_OBJECTS = \
"CMakeFiles/test_cXX.dir/arucoPos.cpp.o"

# External object files for target test_cXX
test_cXX_EXTERNAL_OBJECTS =

bin/test_cXX: CMakeFiles/test_cXX.dir/arucoPos.cpp.o
bin/test_cXX: CMakeFiles/test_cXX.dir/build.make
bin/test_cXX: /usr/local/lib/libopencv_highgui.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_ml.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_objdetect.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_photo.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_stitching.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_video.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_videoio.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_imgcodecs.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_calib3d.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_dnn.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_features2d.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_flann.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_imgproc.so.4.7.0
bin/test_cXX: /usr/local/lib/libopencv_core.so.4.7.0
bin/test_cXX: CMakeFiles/test_cXX.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/test_cXX"
	cmake ..
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_cXX.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_cXX.dir/build: bin/test_cXX
.PHONY : CMakeFiles/test_cXX.dir/build

CMakeFiles/test_cXX.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_cXX.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_cXX.dir/clean

CMakeFiles/test_cXX.dir/depend:
	cd /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/airlab/Desktop/CV_aided_gripper_drone_payload/test /home/airlab/Desktop/CV_aided_gripper_drone_payload/test /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build /home/airlab/Desktop/CV_aided_gripper_drone_payload/test/build/CMakeFiles/test_cXX.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_cXX.dir/depend

