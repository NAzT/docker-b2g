docker run --tty=true \
           --interactive \
           --name b2g \
           --volume /home/dkl/devel:/home/b2g/devel \
           dklawren/docker-b2g \
           su - b2g
