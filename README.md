[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ehizo/project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ehizo/project-ml-microservice-kubernetes/tree/master)

## Project Overview
This project operationalizes a machine learning microservice using kubernetes. 
A pre-trained sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on is provided. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project operationalizes a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Instructions

**1)** Clone the git repo:

- `git clone https://github.com/ehizo/project-ml-microservice-kubernetes.git`

**2)** Change directory:

- `cd project-ml-microservice-kubernetes`

**3)** Create and activate virtual environment. You must already have python installed

- `make setup`

**4)** install dependencies:

- `make install`

**5)** lint the project files:

- `make lint`

**6)** build docker image and start the app in docker container:

- `./run_docker.sh `

**7)** Get a prediction from the app running in the Docker container:

- `./make_prediction.sh `

**8)** Upload docker image to Docker hub. Warning: remember to update the docker login and path

- `./upload_docker.sh `

**9)** Run the service in a kubernetes cluster. Warning: remember to update the dockerpath

- `./run_kubernetes.sh `

**10)** Get a prediction from the app running in the Kubernetes Cluster after port forwarding is successful:

- `./make_prediction.sh `


## :Files:

* app.py: The python flask app
* Makefile: This file has make commands that allows for easy setup of a project
* Dockerfile: Contains the setup for creating a Docker image for the service
* run_docker.sh: Creates a docker image from the Dockerfile, list the images and starts a container
* make_prediction.sh: This script sends data for prediction and prints the predicted value on the command line
* upload_docker.sh: Uploads the docker image to docker hub
* run_kubernetes.sh: Runs the docker image in a kubernetes cluster
