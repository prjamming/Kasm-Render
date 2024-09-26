# Use a base image that supports systemd, for example, Ubuntu
FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update -y
RUN apt-get install wget
RUN cd /tmp
RUN wget https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz
RUN tar -xf kasm_release_1.16.0.f2d6e1.tar.gz
RUN bash kasm_release/install.sh --accept-eula --swap-size 256
# Expose the Kasm Web Interface
EXPOSE 443
