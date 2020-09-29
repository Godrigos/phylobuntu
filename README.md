# phylobuntu

Ubuntu 20.04 bash for phylogenetics classes.

This is the docker image configuration for [godrigos/phylobuntu](https://hub.docker.com/repository/docker/godrigos/phylobuntu) on Docker Hub.

It contais MrBayes, MrBayes MPI version, IQTree, t-coffe and many other alignment tools and is most intended to be used in phylogenetics classes. A new user without root access is created and is the default user of the image.

This image has a volume mounted as the user home directory were students can save files and analyses results.

You should run a container of it as: `docker container run -it godrigos/phylobuntu`.