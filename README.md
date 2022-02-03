# UD615: Scalable Microservices with Kubernetes

# Introduction
1.. The purpose of document is to explain that I cloned the Udacity--Scalable-Microservices-WithKubernetes from Udacity and my addition was collection of shell scripts. 

2.. I used shell scirpt to show the command and that knowledge should be easity transferiable to ansible, chef or any othe tool. 

3.. I have not completed this course since I am trying to solve a problem where the pod takes 10 minutes or more to start up and I am working on another course to help me gain a better understanding of how to debug Kubernetes

## Go Program 
The purpose of these two programs is show the fucntionaltiy provided by the rest service.  The monolith or the services ( message and authetication ) will allow a message to be displayed and the user to get a token and login with the token.

In the App Directory 

The buildMonolith.sh ( builds the monolith as a go program ) places the executable in the bin directory

The monolith executable should be executed as root and showServicesProvided.sh ( show the service that the monolith provides ) can be executed as any user. 

## Docker
The purpose of these two program are to create the application and then add the application and create the docker image

In the App Directory buildContainerImage.sh will create the executable that will become part of the image and buildMonolithImage.sh will use create the container according to app/modules/DockerFile and run MonolithContainer will run and show simple commands
  
