# 在容器中运行 GUI 程序，通过共享主机的 X11 socket 显示出来
xhost + 
docker run --rm -ti -d --net=host --ipc=host \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix mnieto/opencv_gui bash
