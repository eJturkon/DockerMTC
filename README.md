
Creating and Using Docker Dev-Containers for Python Jupyter Notebooks in VS Code
================================================================================

Docker containers provide a great way to eliminate dependencies on the hosts software configuration. This ensures all your code runs the intended way and adds great value in giving ability to run programs that would otherwise not be configured for your devise.

In my example I was not able to install Esri’s arcgis python module since I use apple silicon to compute, and it is unavailable for this configuration at this time. Docker proved a great workaround allowing me to effectively run Linux (a supported OS) within the container.

### Running a Pre-Configured Image

Many pre-configured docker images are available on [Docker Hub](https://hub.docker.com/) including the one for my example: https://hub.docker.com/repository/docker/ejturkon/mtc_geo_image/general

For context let’s run through getting the image from my example up and running in a notebook in VS Code.

**Following anywhere there is formatting with <some_text>, this represents a part of the example where you should replace this for your specific use case.**

#### Dependencies for Image Usage in VS Code:
-	VS Code
-	Python 3.7 or newer
-	Docker Desktop (ensure its up to date)

Ensure you are in the correct working directory and pull the Docker image.

Pull the Docker image.

`$ docker pull <image_name>`

Ensure Docker cli recognizes the image. If you see the name of your image you are all set, i.e”ejturkon/mtc_geo_image”.

`$ docker images`

Build the container. This line assumes all of your ports are still in the default config, port 8888 is the default.

`$ docker run -p 8888:8888 --name <container_name> <image_name>`

Once built you should see an output with “To access the server, open this file in a browser:” and it should then include 3 URLs after. Copy and store the last URL that looks most like the one seen below.

`http://127.0.0.1:8888/lab?token=<token>`

Restart VS Code and open the .ipynb file of your choice. Click the Select Kernel button, or from the command palate “Notebook: Select Notebook Kernel”

![Select Kernel](/images/p0.png){ width: 100px; }

Choose “Existing Jupyter Server”. Paste the URL saved from above and hit enter twice.

![Existing Jupyter Server](/images/p1.png)

Click Python 3 (ipykernel) and you should be good to go!

