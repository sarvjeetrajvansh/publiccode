pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'date'
                sh 'docker run -d --name python python:latest'
                sh 'docker ps'
                sh 'docker exec -i python python -V'
                sh 'echo "Build Done"'
            }
        }
    }
}
