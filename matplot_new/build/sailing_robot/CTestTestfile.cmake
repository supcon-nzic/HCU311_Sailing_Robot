# CMake generated Testfile for 
# Source directory: /home/yqz/matplot_new/src/sailing_robot
# Build directory: /home/yqz/matplot_new/build/sailing_robot
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_sailing_robot_rostest_rostests_test-1.test "/home/yqz/matplot_new/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/yqz/matplot_new/build/test_results/sailing_robot/rostest-rostests_test-1.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/yqz/matplot_new/src/sailing_robot --package=sailing_robot --results-filename rostests_test-1.xml --results-base-dir \"/home/yqz/matplot_new/build/test_results\" /home/yqz/matplot_new/src/sailing_robot/rostests/test-1.test ")
add_test(_ctest_sailing_robot_nosetests_tests "/home/yqz/matplot_new/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/yqz/matplot_new/build/test_results/sailing_robot/nosetests-tests.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/yqz/matplot_new/build/test_results/sailing_robot" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/yqz/matplot_new/src/sailing_robot/tests --with-xunit --xunit-file=/home/yqz/matplot_new/build/test_results/sailing_robot/nosetests-tests.xml")
