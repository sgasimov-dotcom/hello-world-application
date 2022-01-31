## Welcome to Hello world documentation

## Application Build Process

- Helm Chart for hello-world app has been created and  configuration values inside values.yml were configured for: 
	- enable ingress, annotations  for cert-manager etc. 
	- change host to your domain name
	- add your Docker image
    - changed app Ports etc.

- Created Dockerfile for Python Hello-World app.py application
- Build process is automated with Jenkins --> Sonarqube --> Nexus  - it will build Dockerfile in Jenkins, send image to https://sonarqube.sgasimov.com  for static code analysis , if image is safe it will locate the image into my repository in Nexus  https://nexus.sgasimov.com

## Application Deploy Process

Kubernetes --> Helm Chart --> Terraform --> Jenkins

1. This application is running on top of GKE cluster
2. This Application has been automated to be deployed with Jenkins (global shared library pipeline) https://jenkins.sgasimov.com. Please make sure you have a job to build and deploy so it will be auto-triggered. If you will check the structure of the repo you will find two files `JenkinsBuilder.groovy` and `JenkinsDeployer.groovy` for build and deploy

    ![image](https://user-images.githubusercontent.com/84157053/151738846-4a4eb3af-1ae3-4d12-aafd-049c07f7da69.png)
  
3. Hello-World application is running on DEV, QA, STAGE AND PROD env, 3 pods each for Highly Availability.

    ![image](https://user-images.githubusercontent.com/84157053/151690117-6fa8438b-0363-47af-8f08-d339d25714db.png)

- https://hello-world.sgasimov.com/ PROD 
- https://stage.hello-world.sgasimov.com/ STAGE
- https://qa.hello-world.sgasimov.com/ QA 
- https://dev.hello-world.sgasimov.com/ DEV 

4. Terraform module used for this app, will triger Helm to build our application.
5. Each env will use separate terraform backend for separate state file. For that purpose we are using set-env.sh script to automatically set up environmental variables for our state backends.  

Jenkins will build and push the code to different environments following the exact structure we have in the repo 

### How to test the hello-world with docker ?
This documentation describes how to run the hello-world using docker build. 

### Before you begin
Make sure you have Docker, Python3, Flask Library and AWS boto installed


First you will need to clone the repo 
```
git clone https://github.com/sgasimov-dotcom/hello-world-application.git
```


After you cloned you will need to get into `hello-world/deployments/docker` 
```
cd hello-world-application/deployments/docker
```

Run docker ``` build -t helloworld . ```  to build the image

After you have everything set up you can go ahead and start deploy
```
docker run -d --name helloworld -p 5000:5000 helloworld
```

