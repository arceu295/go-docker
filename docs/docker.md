DOCKER
=======

$ docker build -t my-golang-app .
$ docker run -it --rm --name my-running-app my-golang-app

ENV abc=hello
ENV abc=bye def=$abc
ENV ghi=$abc
