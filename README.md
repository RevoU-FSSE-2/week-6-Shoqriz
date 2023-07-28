[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/nj7iw4Wb)

# Week 6 Assignment - Docker

## Introduction
Welcome! In this guide, we will explore the fundamentals of Docker and its integration with Node.js. By the end of this explanation, you will have a solid understanding of Docker concepts and be able to containerize Node.js applications effectively.

## What is Docker
Docker is a powerful software platform that simplifies the process of building, testing, and deploying applications. It leverages containerization technology to package software, along with its dependencies, into portable units called containers. These containers are isolated and self-sufficient, ensuring consistent application execution across various environments.

## What is a Container?
A container is a standardized unit of software that encapsulates an application and its dependencies, making it easy to move and run consistently on any computing environment. Docker containers are lightweight, standalone, and executable packages, containing everything required to run an application, including the code, runtime, system tools, and settings.

Containers ensure that applications work uniformly, regardless of differences between development and production environments. They enable seamless deployment and scaling, offering a consistent environment for the application to operate reliably.

## Let's Get Started:
### Step 1: Download Docker
1. Visit the [Docker website](https://www.docker.com/).
2. Download the Docker version suitable for your operating system.

   ![Docker](Asset%20Image/Docker.png)
4. After installation, sign up and log in to your Docker account.

   ![Docker](Asset%20Image/Login.png)
5. To verify a successful installation, run `docker -v` in your terminal.

   ![Docker](Asset%20Image/Docker%20V.png)
   
### Step 2: Dockerizing a Node.js App
1. Create `package.json`: This essential metadata file in Node.js projects contains project information, such as name, version, description, dependencies, scripts, and author. Properly defining `package.json` streamlines dependency management and enhances collaboration among developers.

![Docker](Asset%20Image/Json.png)

2. Create `Dockerfile`: In this file, specify the configuration for your Docker image. Key commands include `FROM`, `WORKDIR`, `COPY`, `RUN`, `EXPOSE`, and `CMD`. They define the base image, working directory, file copying, commands during build, exposed ports, and the default container command.

![Docker](Asset%20Image/DockerFile.png)

3. Build the image: Use the command `docker build . -t your_image_name` to build the Docker image. This process packages your application and its dependencies into a self-contained unit that can be deployed consistently across environments.

![Docker](Asset%20Image/Build.png)

4. Run the image: Execute the command `docker run -p your-localport:app-port your_image_name` to run the Docker container. The `-p` option maps a port on your local machine to a port inside the container, enabling access to the application running within it.

![Docker](Asset%20Image/Running.png)

5. Verify the result: Access your application by visiting `http://localhost:your-localport` in a web browser. You should see the result of your Node.js application.

![Docker](Asset%20Image/Result.png)

## Conclusion
Docker is a powerful tool that streamlines application development, deployment, and management. By creating isolated containers, Docker ensures consistency and portability across various environments. Dockerizing Node.js applications enables efficient collaboration and seamless scaling, making it a valuable asset in modern software development and deployment workflows.

For any questions or further assistance, feel free to reach out. Happy Dockerizing!
