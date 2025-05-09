pipeline {
    agent any

    environment {
        IMAGE_BACKEND = 'todo-backend'
        IMAGE_FRONTEND = 'todo-frontend'
        IMAGE_TAG = '1.0.0'
    }
    stages {
        stage('Clean Workspace') {
            steps {
                cleanWs()
            }
        }

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build & Deploy') {
            steps {
                sh 'chmod +x ./deploy.sh'
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Deployment erfolgreich!'
        }
        failure {
            echo 'Deployment fehlgeschlagen.'
        }
    }
}
