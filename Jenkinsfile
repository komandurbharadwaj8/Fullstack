pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from your version control system (e.g., Git)
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                // Build a Docker image from the Dockerfile in the repository root
                script {
                    def dockerImage = docker.build('my-docker-image:latest', '.')
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                // Run a Docker container from the built image
                script {
                    dockerImage.inside('-p 8080:80') {
                        // Optional: Run any additional commands inside the container
                    }
                }
            }
        }
    }
    
    post {
        success {
            // Perform actions on successful build and deployment
            sh 'build success'
        }
        
        failure {
            // Perform actions on build or deployment failure
           sh 'Build failed'
        }
    }
}
