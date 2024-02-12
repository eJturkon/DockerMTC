# DockerMTC
Creating and using Docker containers with specific use cases for [MTC](https://mtc.ca.gov/).

[Documentation](https://app.box.com/file/1417064598124)


Creating and Using Docker Dev-Containers for Python Jupyter Notebooks in VS Code
================================================================================

Docker containers are useful for ensuring code runs as intended, especially for configurations where certain modules are not available.

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

