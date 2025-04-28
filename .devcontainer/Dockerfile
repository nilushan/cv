FROM ubuntu:22.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    wget \
    git \
    unzip \
    curl \
    make \
    python3 \
    python3-pip \
    lsb-release \
    software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install TeX Live
RUN apt-get update && apt-get install -y \
    texlive-full \
    texlive-lang-all \
    texlive-fonts-extra \
    latexmk \
    biber \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user that matches the host user ID and GID
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the default user
USER $USERNAME

# Set the working directory
WORKDIR /workspaces

# Install any additional LaTeX packages
RUN sudo apt-get update && sudo apt-get install -y \
    texlive-font-utils \
    fonts-font-awesome \
    && sudo apt-get clean \
    && sudo rm -rf /var/lib/apt/lists/*