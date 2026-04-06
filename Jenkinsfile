pipeline {
    agent any

    stages {

        stage("Code") {
            steps {
                git url: "https://github.com/bhavyasehgall/node-cicd.git", branch: "main"
                echo 'Code cloned'
            }
        }

        stage("Build Docker Image") {
            steps {
                sh "docker build -t node-app ."
                echo 'Docker image built'
            }
        }

        stage("Push to DockerHub") {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: "dockerHub",
                    passwordVariable: "dockerHubPass",
                    usernameVariable: "dockerHubUser"
                )]) {
                    sh "docker login -u ${dockerHubUser} -p ${dockerHubPass}"
                    sh "docker tag node-app ${dockerHubUser}/node-app:latest"
                    sh "docker push ${dockerHubUser}/node-app:latest"
                }
            }
        }

        stage("Deploy") {
            steps {
                sh "docker stop node-container || true"
                sh "docker rm node-container || true"
                sh "docker run -d -p 3000:3000 --name node-container ${dockerHubUser}/node-app:latest"
                echo 'App deployed'
            }
        }
    }
}
