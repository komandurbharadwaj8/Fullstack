stage('Build Nginx Docker Image and Deploy Container') {
    steps {
        // Print the current working directory
        sh 'pwd'

        // List the files in the workspace
        sh 'ls -l'

        // Build the Nginx Docker image
        sh 'docker build -t React-app .'

        // Run the Nginx container
        sh 'docker run -d -p 80:80 --name my-nginx-container React-app'
    }
}

