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
CMAKE_SOURCE_DIR = /home/yqz/matplot_new/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yqz/matplot_new/build

# Utility rule file for clean_test_results_sailing_robot.

# Include the progress variables for this target.
include sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/progress.make

sailing_robot/CMakeFiles/clean_test_results_sailing_robot:
	cd /home/yqz/matplot_new/build/sailing_robot && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/yqz/matplot_new/build/test_results/sailing_robot

clean_test_results_sailing_robot: sailing_robot/CMakeFiles/clean_test_results_sailing_robot
clean_test_results_sailing_robot: sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/build.make

.PHONY : clean_test_results_sailing_robot

# Rule to build all files generated by this target.
sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/build: clean_test_results_sailing_robot

.PHONY : sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/build

sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/clean:
	cd /home/yqz/matplot_new/build/sailing_robot && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_sailing_robot.dir/cmake_clean.cmake
.PHONY : sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/clean

sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/depend:
	cd /home/yqz/matplot_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yqz/matplot_new/src /home/yqz/matplot_new/src/sailing_robot /home/yqz/matplot_new/build /home/yqz/matplot_new/build/sailing_robot /home/yqz/matplot_new/build/sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sailing_robot/CMakeFiles/clean_test_results_sailing_robot.dir/depend

