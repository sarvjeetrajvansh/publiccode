pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'sudo docker run -dt --name python python:latest'
                sh 'sudo docker ps'
                sh 'sudo docker exec -it python python -V'
                sh 'sudo date'
                sh 'sudo echo "Build Done"'
            }
        }
    }
}
