## Use an official Python runtime as a parent image
FROM python:3-alpine

## ARG for group and user
ARG GROUP=python
ARG USERNAME=flaskuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG APP_HOME=/app

## Create a non-root group and user to run the application

RUN addgroup -g $USER_GID $GROUP \
    && adduser -u  $USER_GID -S  -G $GROUP -h $APP_HOME $USERNAME

## Set the working directory to /app
WORKDIR $APP_HOME

## Copy the current directory contents into the container at /app
COPY *.txt app.py $APP_HOME

## Install any needed packages specified in requirements.txt
RUN  pip install  --upgrade pip &&\
     pip install  -r requirements.txt

## Change the user to the non-root user
USER $USERNAME

## Make port 5000 available to the world outside this container
EXPOSE 5000

## Run app.py when the container launches
CMD ["python3", "/app/app.py"]