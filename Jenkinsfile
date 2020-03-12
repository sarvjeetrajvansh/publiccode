pipeline {
    agent any
    stages {
        stage('build') {
            steps {
               sh 'docker run -dt --name python-agent  python:3.5.1'
               sh 'docker exec -it python-agent python -V'
            }
        }
    }
}
