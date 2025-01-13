FROM node:20.18.1

SHELL ["/bin/bash", "-c"]

RUN apt update
RUN apt install -y python3-pip python-is-python3 && apt clean

RUN python3 -m pip config set global.break-system-packages true
RUN pip3 install --no-cache-dir build gradio twine

RUN npm install --global pnpm

COPY ./ /app

WORKDIR /app