######################################################################
#  This Dockerfile is used for build mongo docker image              #
######################################################################

# RASA_SDK_IMAGE is passed from docker-compose.yml
FROM mongo:latest

# Change back to root user to install dependencies
USER root

ENV TZ=Asia/Taipei
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


