# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/HCU-311/camera

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/HCU-311/camera/build

# Include any dependencies generated for this target.
include CMakeFiles/OpenCamera.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenCamera.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenCamera.dir/flags.make

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o: CMakeFiles/OpenCamera.dir/flags.make
CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o: ../OpenCamera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/HCU-311/camera/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o -c /root/HCU-311/camera/OpenCamera.cpp

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OpenCamera.dir/OpenCamera.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/HCU-311/camera/OpenCamera.cpp > CMakeFiles/OpenCamera.dir/OpenCamera.cpp.i

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OpenCamera.dir/OpenCamera.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/HCU-311/camera/OpenCamera.cpp -o CMakeFiles/OpenCamera.dir/OpenCamera.cpp.s

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.requires:

.PHONY : CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.requires

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.provides: CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.requires
	$(MAKE) -f CMakeFiles/OpenCamera.dir/build.make CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.provides.build
.PHONY : CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.provides

CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.provides.build: CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o


# Object files for target OpenCamera
OpenCamera_OBJECTS = \
"CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o"

# External object files for target OpenCamera
OpenCamera_EXTERNAL_OBJECTS =

OpenCamera: CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o
OpenCamera: CMakeFiles/OpenCamera.dir/build.make
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_stitching3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_superres3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_videostab3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_aruco3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_bgsegm3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_bioinspired3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_ccalib3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_cvv3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_dpm3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_face3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_fuzzy3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_hdf3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_img_hash3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_line_descriptor3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_optflow3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_reg3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_rgbd3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_saliency3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_stereo3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_structured_light3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_surface_matching3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_tracking3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_xfeatures2d3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_ximgproc3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_xobjdetect3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_xphoto3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_shape3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_photo3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_datasets3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_plot3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_text3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_dnn3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_ml3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_video3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_calib3d3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_features2d3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_highgui3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_videoio3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_viz3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_phase_unwrapping3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_flann3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_imgcodecs3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_objdetect3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_imgproc3.so.3.3.1
OpenCamera: /opt/ros/kinetic/lib/arm-linux-gnueabihf/libopencv_core3.so.3.3.1
OpenCamera: CMakeFiles/OpenCamera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/HCU-311/camera/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OpenCamera"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenCamera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenCamera.dir/build: OpenCamera

.PHONY : CMakeFiles/OpenCamera.dir/build

CMakeFiles/OpenCamera.dir/requires: CMakeFiles/OpenCamera.dir/OpenCamera.cpp.o.requires

.PHONY : CMakeFiles/OpenCamera.dir/requires

CMakeFiles/OpenCamera.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OpenCamera.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OpenCamera.dir/clean

CMakeFiles/OpenCamera.dir/depend:
	cd /root/HCU-311/camera/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/HCU-311/camera /root/HCU-311/camera /root/HCU-311/camera/build /root/HCU-311/camera/build /root/HCU-311/camera/build/CMakeFiles/OpenCamera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OpenCamera.dir/depend
