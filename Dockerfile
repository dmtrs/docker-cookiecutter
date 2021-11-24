FROM python:3.9-slim-buster

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash user
USER user

WORKDIR /home/user

ENV PATH "$PATH:/home/user/.local/bin"

RUN pip install --user cookiecutter

ENTRYPOINT [ "cookiecutter" ]
