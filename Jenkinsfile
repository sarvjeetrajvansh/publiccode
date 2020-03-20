pipeline {
    agent { docker { image 'python:3.5.1' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
            stage('SCM') {
                git 'https://github.com/sarvjeetrajvansh/publiccode.git'
              }
           stage('SonarQube analysis') {
           def scannerHome = tool 'SonarScanner 4.0';
           withSonarQubeEnv('My SonarQube Server') { // If you have configured more than one global server connection, you can specify its name
          sh "${scannerHome}/bin/sonar-scanner"
            }
          }
        }
    }
}
