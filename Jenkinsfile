pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker run -dt --name python python:latest'
                sh 'docker ps'
                sh 'docker exec -it python python -V'
                sh 'date'
                sh 'echo "Build Done"'
            }
        }
    }
}
