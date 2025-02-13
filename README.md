# SimpleTimeService TASK-1 [Minimalist Application Development / Docker / Kubernetes]

## Description
The /app folder contains a simple Flask-based microservice that returns the current UTC timestamp and the visitor's IP address.

## Running the Service
### Using Docker
1. Clone the repository
2. Navigate to the /app folder
   ```sh
   cd app
3. Build the image:
   ```sh
   docker build -t simple-time-service .
4. Run the docker image
   ```sh
   docker run -p 5000:5000 simple-time-service

### Using Image from Docker Hub
1. Pull the docker image using the command:
   ```sh
   docker pull pawansenapati/p41-assessment
2. Run the image using the command:
   ```sh
   docker run -p 5000:5000 pawansenapati/p41-assessment

# SimpleTimeService TASK-2 [Terraform and Cloud: create the infrastructure to host your container]

## Description
The /terraform folder contains a terraform code to deploy the infrastructure to GCP and host the container created above in Cloud Run

## Prerequisites
1. Ensure you have a GCP project and "OWNER" role on the project.

### Setup Gcloud CLI
1. Follow this official documentation and install gcloud CLI
   ```sh
   https://cloud.google.com/sdk/docs/install#windows
   [Ensure you have set up gcloud cli properly and set the system environment variables]

### Deploying the Infrastructure
1. Clone the repository: 
   ```sh
   git clone https://github.com/PawanSenapati/particle41-assessment.git
2. Navigate to the /terraform folder
   ```sh
   cd terraform
3. Authenticate to GCP using ADC by using the below command:
   ```sh
   gcloud auth application-default login
4. This will show a link to authenticate to gcloud. Click on the link and follow the steps to authenticate.
3. Once the authentication is complete, run the terraform:
   ```sh
   terraform init
   terraform plan
   terraform apply