# DockerMTC
Creating and using Docker containers with specific use cases for [MTC](https://mtc.ca.gov/).

[Documentation](https://app.box.com/file/1417064598124)


Creating and Using Docker Dev-Containers for Python Jupyter Notebooks in VS Code
================================================================================

Docker containers provide a great way to eliminate dependencies on the hosts software configuration. This ensures all your code runs the intended way and adds great value in giving ability to run programs that would otherwise not be configured for your devise. ![image](https://github.com/eJturkon/DockerMTC/assets/121120285/e2f0f6a2-9a7b-4cbf-b613-a7769b1690c4)


### Running a Pre-Configured Image

Many pre-configured Docker images are available on [Docker Hub](https://hub.docker.com/).

#### Steps to Run the Image

**Pull the Docker Image:**

`$ docker pull <image_name>`

**Verify the Image:**

`$ docker images`

**Build the Container:**

`$ docker run -p 8888:8888 --name <container_name> <image_name>`

**Access the Server:**

`http://127.0.0.1:8888/lab?token=<token>`

