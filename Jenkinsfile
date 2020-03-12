pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                docker run -dt --name python-agent  python:3.5.1
                docker exec -it python-agent python -V
            }
        }
    }
}
