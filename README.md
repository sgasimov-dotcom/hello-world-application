## Welcome to Hello world documentation
1. This application is running on top of GKE cluster
2. This Application has been deployed from Jenkins global library https://jenkins.sgasimov.com. Please make sure you have a job to build and deploy so it will be auto-triggered. If you will check the structure of the repo you will find two files `JenkinsBuilder.groovy` and `JenkinsDeployer.groovy` for build and deploy  
3. Hello-World application is running on DEV, QA, STAGE AND PROD env, 3 pods each for Highly Availability.

    ![image](https://user-images.githubusercontent.com/84157053/151690117-6fa8438b-0363-47af-8f08-d339d25714db.png)


- https://hello-world.sgasimov.com/ PROD 
- https://stage.hello-world.sgasimov.com/ STAGE
- https://qa.hello-world.sgasimov.com/ QA 
- https://dev.hello-world.sgasimov.com/ DEV 

### How to test the hello-world with docker ?
This documentation describes how to run the hello-world using docker build. 

### Before you begin
Make sure you have Docker, Python3, Flask Library and AWS boto installed


First you will need to clone the repo 
```
git clone https://github.com/sgasimov-dotcom/hello-world-application.git
```


after you cloned you will need to get into `hello-world/deployments/docker` 
```
cd hello-world-application/deployments/docker
```

Run docker ``` build -t helloworld . ```  to build the image

After you have everything set up you can go ahead and start deploy
```
docker run -d --name helloworld -p 3000:3000 helloworld
```

