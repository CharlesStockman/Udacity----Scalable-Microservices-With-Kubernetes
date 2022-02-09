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
In the App Directory 

The buildContainerImage.sh will build the executable the will become part of the image.

The buildMonolitImage.sh will create the monlith image using add the executable create by \"buildContainerImage.sh\" with a tag: 1.0.0.

The runMonolith.sh will start a contianer and display "docker ps" and docker input.

The runContainerImage.sh will run the image and then get the ip address of container using docker inspect ( .NetworkSettings.IPAddress ).  The script 
will use the ip address to show the services provided ( displaying a message and authentication ).

## Kubernetes
In thge kubernetes directory

There is a problem.  When I am creating a pod it takes longer than it should to be created.  I am going reseach this as I learn more about Kubernetes and 
Microservices.

The buildMonolith.sh creates a pod from the monoith.yaml and then does a port forwared and show the information from the get pods and describes pods.

The useMonolith.sh shows the services that the pod can provides and dispalys the log at the end.

The healthChecks.sh parse the JSON so the liveness and readiness probe are dipslay for the users knowledge.







  
