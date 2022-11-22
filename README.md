# CS2080 Lab 12

This repo is supplemental to lab 12 where we were asked to get vs code running in a docker container. The requirements are as follows
  - Ubuntu docker image
  - Running VS Code on port 80
    - https://github.com/coder/code-server Links to an external site. (using coder's code-server to accomplish task)
  - Zsh installed

To use the created Dockerfile (seen in CS2080_16Nov repo) I built an image using the command:

$ docker build -t vs-code-image .   

Note, this only works in the contect directory "Lab12" since no path specified.

Then I started the container using the command:

$ docker run -it -p 80:8080 --name Lab12Container vs-code-image
