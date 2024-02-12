# Python parent image
FROM python:3.11-slim

# Skip interactive frontend during installations
ENV DEBIAN_FRONTEND=noninteractive

# System dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libkrb5-dev \
    gdal-bin \
    libgdal-dev \
    && rm -rf /var/lib/apt/lists/*

# Create and activate venv
RUN python -m venv .venv
ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# set GDAL_VERSION
RUN GDAL_VERSION=$(gdal-config --version) && \
    echo "GDAL_VERSION=${GDAL_VERSION}" > /etc/environment
ENV GDAL_CONFIG=/usr/bin/gdal-config

# Copy the current directory contents into image @ /usr/src/app
COPY . /usr/src/app

# Set wd into container
WORKDIR /usr/src/app

# Install requirements
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

ENV NAME World

# Set the working directory in the container
WORKDIR /usr/src/app

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
