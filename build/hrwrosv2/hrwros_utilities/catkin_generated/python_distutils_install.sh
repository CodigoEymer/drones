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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/eymer/catkinQ/src/hrwrosv2/hrwros_utilities"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/eymer/catkinQ/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/eymer/catkinQ/install/lib/python2.7/dist-packages:/home/eymer/catkinQ/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/eymer/catkinQ/build" \
    "/usr/bin/python2" \
    "/home/eymer/catkinQ/src/hrwrosv2/hrwros_utilities/setup.py" \
     \
    build --build-base "/home/eymer/catkinQ/build/hrwrosv2/hrwros_utilities" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/eymer/catkinQ/install" --install-scripts="/home/eymer/catkinQ/install/bin"
