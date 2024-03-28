FROM node:12-bullseye
RUN apt update && \
  apt install sudo && \
  wget -O - https://apt.corretto.aws/corretto.key | sudo gpg --dearmor -o /usr/share/keyrings/corretto-keyring.gpg && \
  echo "deb [signed-by=/usr/share/keyrings/corretto-keyring.gpg] https://apt.corretto.aws stable main" | sudo tee /etc/apt/sources.list.d/corretto.list && \
  sudo apt-get update; sudo apt-get install -y java-1.8.0-amazon-corretto-jdk
