[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/nj7iw4Wb)

# Week 6 Assignment - Docker

### Introduction
Hello here I will explain about a small Node.js project running inside a Docker Container.

We will explore the basics of Docker and its integration with Node.js. By the end of this explanation you will have a good understanding of Docker concepts and be able to containerize Node.js applications effectively.

### What is Docker
Docker is a software platform that allows you to quickly build, test and deploy applications. Docker packages software into standardized units called containers that have everything the software needs to function including libraries, system tools, code, and runtime. Using Docker, you can quickly deploy and scale applications to any environment and be confident that your code will run.

### What is a Container?
A container is a standard unit of software that packages up code and all its dependencies so the application runs quickly and reliably from one computing environment to another. A Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.

Container images become containers at runtime and in the case of Docker containers – images become containers when they run on Docker Engine. Available for both Linux and Windows-based applications, containerized software will always run the same, regardless of the infrastructure. Containers isolate software from its environment and ensure that it works uniformly despite differences for instance between development and staging.

### Let's Get Started :
#### Download Docker
  1. Go to Website [Docker](https://www.docker.com/)
  2. Download according to your operating system
     
     ![Docker](Asset%20Image/Docker.png)
  3. After finishing downloading and installing, then you can sign up and login

     ![Docker](Asset%20Image/Login.png)
  4. To make sure your docker is installed properly, you can check on your terminal by using the command ```docker -v```

     ![Docker](Asset%20Image/Docker%20V.png)

### Dockerizing Node Js App
