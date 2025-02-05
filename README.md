# SimpleTimeService

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