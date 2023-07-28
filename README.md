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
  4. To make sure your docker is installed properly, you can check on your terminal by using the command `docker -v`

     ![Docker](Asset%20Image/Docker%20V.png)
### Dockerizing Node Js App
  1. Creat `package.json`,`package.json` is a vital metadata file in Node.js projects. It contains key information about the app, such as its
     name, version, description, and dependencies. Think of it as a brief project description and setup.
     Key details in `package.json` include:
     - `"name"`: The unique project name, used for identification.
     - `"version"`: The project's version number for tracking changes.
     - `"description"`: A short summary of the project's purpose.
     - `"dependencies"`: A list of external libraries/modules needed to run the app.
     - `"scripts"`: Custom scripts executable using npm (e.g., "start" to run the app, "test" for testing).
     - `"author"`: The name of the project's creator.

     `package.json` streamlines dependency management, ensuring easy collaboration and consistency among developers.

     ![Docker](Asset%20Image/Json.png)

  2. Creat `Docker File`
     - `FROM`: Sets the base image.
     - `WORKDIR`: Specifies the working directory.
     - `COPY`: Copies files into the container.
     - `RUN`: Executes commands during build.
     - `EXPOSE`: Documents exposed ports.
     - `CMD`: Sets the default container command.
     These Dockerfile commands are essential for creating a containerized environment for your application.
     
     ![Docker](Asset%20Image/DockerFile.png)
  
  3. Build the image 
     To build a Docker image using the terminal, you can use the command:
     ```
     docker build . -t your_image_name
     ```
    
      - `docker build`: Instructs Docker to build an image based on the instructions specified in the Dockerfile.
      - `.`: Specifies the build context, which is the current directory. It includes the Dockerfile and any other files required for building the image.
      - `-t your_image_name`: Tags the newly built image with the name "your_image_name" (you can replace this with any name you prefer). The image name and tag together
         uniquely identify the image.
      Building a Docker image allows you to package your application and its dependencies into a self-contained unit that can be deployed and executed consistently             across different environments. The `-t` option gives the image a meaningful name, making it easier to identify and use later.
     
      ![Docker](Asset%20Image/Build.png)

   4. Run the Image
      To run a Docker image, you can use the following command:
      ```
      docker run -p your-localport:app-port your_image_name
      ```

      - `docker run`: Instructs Docker to run a container based on the specified image.
      - `-p your-localport:app-port`: Maps a port on your local machine to a port inside the container. This allows you to access the application running inside the
        container through the specified local port. For example, `-p 3001:3001` maps port 3001 on your local machine to port 3001 inside the container.
      - `your_image_name:tag_name`: Specifies the name and tag of the Docker image you want to run. The image name and tag together uniquely identify the image. If the
        tag is omitted, Docker will assume the latest version of the image.

        Running a Docker container enables you to execute the application within an isolated environment with its dependencies, ensuring consistency across different
        systems. The port mapping with the `-p` option allows you to access the application running inside the container from your local machine using the specified port.

        ![Docker](Asset%20Image/Running.png)

   5. Once you have successfully built and run your Docker image, you can check the status of your running containers in Docker Desktop. The containers that are running
      will be listed, and you can find your image among them. It will be marked as "Running," indicating that it is currently active and accessible.

      With the Docker container up and running, you can access your application in a web browser by navigating to `http://localhost:3001/`. This URL corresponds to the
      port mapping you specified when running the container (`-p 3001:3001`). The application inside the container is now reachable on your local machine through port
      3001.
      
      When you open `http://localhost:3001/`, you will see the result of your application, which may vary based on the content and functionality of your app. Docker has
      successfully encapsulated your application and its dependencies, allowing you to interact with it seamlessly in a consistent environment regardless of the
      underlying system.

      ![Docker](Asset%20Image/Result.png)

      In summary, Docker enables you to build, run, and manage containers, providing an isolated and consistent environment for your applications. By using Docker
      Desktop, you can monitor your running containers and access your applications via specified ports, making development and deployment more efficient and
      streamlined.
