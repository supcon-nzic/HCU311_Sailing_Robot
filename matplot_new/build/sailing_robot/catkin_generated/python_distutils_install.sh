#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/yqz/matplot_new/src/sailing_robot"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/yqz/matplot_new/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/yqz/matplot_new/install/lib/python2.7/dist-packages:/home/yqz/matplot_new/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/yqz/matplot_new/build" \
    "/usr/bin/python" \
    "/home/yqz/matplot_new/src/sailing_robot/setup.py" \
    build --build-base "/home/yqz/matplot_new/build/sailing_robot" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/yqz/matplot_new/install" --install-scripts="/home/yqz/matplot_new/install/bin"
