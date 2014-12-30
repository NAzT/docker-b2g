docker run --tty=true \
           --interactive \
           --name b2g \
           --volume /home/dkl/devel:/home/b2g/devel \
           --volume /dev/bus/usb:/dev/bus/usb \
           --privileged \
           dklawren/docker-b2g \
           su - b2g
