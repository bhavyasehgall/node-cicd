pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git url: 'git@github.com:bhavyasehgall/node-cicd.git', branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t node-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                docker stop node-app-container || true
                docker rm node-app-container || true
                docker run -d -p 8000:8000 --name node-app-container node-app
                '''
            }
        }
    }
}
