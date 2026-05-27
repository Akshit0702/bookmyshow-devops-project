pipeline {
    agent any

    stages {

        stage('Git Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Akshit0702/bookmyshow-devops-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t bookmyshow .'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm -f bookmyshow || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 3000:3000 --name bookmyshow bookmyshow'
            }
        }
    }
}


