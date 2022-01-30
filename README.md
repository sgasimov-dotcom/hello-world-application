# Welcome to Hello world documentation
#fuchicorp/work-sessions/hello-world 
To deploy this application make sure you have followed the steps from the [Jenkins global library](https://github.com/fuchicorp/jenkins-global-library). Please make sure you have a job to build and deploy so it will be auto-triggered. If you will check the structure of the repo you will find two files `JenkinsBuilder.groovy` and `JenkinsDeployer.groovy` for build and deploy  


## Application endpoints for FuchiCorp cluster
You should have exact same copy of these endpoints which means ENV.your-domain.com and application should respond
1. https://hello.fuchicorp.com/ PROD 
2. https://stage.hello.fuchicorp.com/ STAGE
3. https://qa.hello.fuchicorp.com/ QA 
4. https://dev.hello.fuchicorp.com/ DEV 


## How can I check my hello world?
If you will navigate to [hello-world](https://hello-world.fuchicorp.com/) application and find your name. You should be able see hello world endpoints and all common tools endpoints. Please make sure all environments are up and running for hello world


## What is hello world?
A "Hello, World!" program generally is a computer program that outputs or displays the message "Hello, World!". Such a program is very simple in most programming languages and is often used to illustrate the basic syntax of a programming language. It is often the first program written by people learning


---

# How to run the hello-world with docker compose?
This documentation describes how to run the hello-world using [docker compose](https://docs.docker.com/compose/gettingstarted/). 

## Before you begin
1. Make sure you have docker is installed
2. Make sure docker-compose is installed 


First you will need to clone the repo 
```
git clone git@github.com:fuchicorp/hello-world.git
```


after you cloned you will need to get into `hello-world/deployments/docker` 
```
cd hello-world/deployments/docker
```

Docker compose has environment variables configured see below all env 
```
export GIT_TOKEN='<YOUR GITHUB TOKEN>'
```


After you have everything set up you can go ahead and start build and deploy
```
docker-compose build
docker-compose up
```


## List of environment variables
| Environment variable  | Required      | Description
| --------------------- |-------------- | -----------
| GIT_TOKEN             | yes           | To pull information from github 
| GITHUB_CLIENT_ID      | no            | To configuration github auth 
| GITHUB_CLIENT_SECRET  | no            | To configuration github auth 









