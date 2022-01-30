## Welcome to Hello world documentation
This Application has been deployed from Jenkins global library https://jenkins.sgasimov.com. Please make sure you have a job to build and deploy so it will be auto-triggered. If you will check the structure of the repo you will find two files `JenkinsBuilder.groovy` and `JenkinsDeployer.groovy` for build and deploy  

### Application endpoints for My cluster
You should have exact same copy of these endpoints which means ENV.your-domain.com and application should respond
Every application on each env scheduled on 3 Pod for Highly Availability.
1. https://hello-world.sgasimov.com/ PROD 
2. https://stage.hello-world.sgasimov.com/ STAGE
3. https://qa.hello-world.sgasimov.com/ QA 
4. https://dev.hello-world.sgasimov.com/ DEV 

### How to run the hello-world with docker compose?
This documentation describes how to run the hello-world using [docker compose](https://docs.docker.com/compose/gettingstarted/). 

### Before you begin
1. Make sure you have docker is installed
2. Make sure docker-compose is installed 


First you will need to clone the repo 
```
git clone https://github.com/sgasimov-dotcom/hello-world-application.git
```


after you cloned you will need to get into `hello-world/deployments/docker` 
```
cd hello-world-application/deployments/docker
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


### List of environment variables
| Environment variable  | Required      | Description
| --------------------- |-------------- | -----------
| GIT_TOKEN             | yes           | To pull information from github 
| GITHUB_CLIENT_ID      | no            | To configuration github auth 
| GITHUB_CLIENT_SECRET  | no            | To configuration github auth 

