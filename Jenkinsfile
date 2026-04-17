pipeline {
    agent any

    environment {
        IMAGE_NAME = "node-app"
        CONTAINER_NAME = "node-app-container"
    }

    stages {

        stage("Clone Code") {
            steps {
                git branch: "main", url: "https://github.com/bhavyasehgall/node-cicd.git"
            }
        }

        stage("Build Docker Image") {
            steps {
                sh "docker build -t $IMAGE_NAME ."
            }
        }

        stage("Stop Old Container") {
            steps {
                sh "docker rm -f $CONTAINER_NAME || true"
            }
        }

        stage("Run Container") {
            steps {
                sh "docker run -d -p 8000:8000 --name $CONTAINER_NAME $IMAGE_NAME"
            }
        }
    }
}
