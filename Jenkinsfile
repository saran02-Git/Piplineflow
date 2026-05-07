pipeline {
    agent any

    environment {
        DOCKER_USER = "saran0702"
    }

    stages {

        stage('Clone') {
            steps {
                git branch: "${env.BRANCH_NAME}",
                url: 'https://github.com/saran02-Git/Piplineflow.git'
            }
        }

        stage('Build Image') {
            steps {
                sh 'docker build -t react-app .'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'docker-creds',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {
                    sh 'echo $PASS | docker login -u $USER --password-stdin'
                }
            }
        }

        stage('Push Dev') {
            when {
                branch 'dev'
            }
            steps {
                sh 'docker tag react-app saran0702/dev:latest'
                sh 'docker push saran0702/dev:latest'
            }
        }

        stage('Push Prod') {
            when {
                branch 'master'
            }
            steps {
                sh 'docker tag react-app saran0702/prod:latest'
                sh 'docker push saran0702/prod:latest'
            }
        }
    }
}
