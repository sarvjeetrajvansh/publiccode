pipeline {
    agent { docker { image 'python:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
            stage('SCM') {
                steps{
                git 'https://github.com/sarvjeetrajvansh/publiccode.git'
                }
            }
        stage('SonarQube analysis'){
        steps{
           
           withSonarQubeEnv('sonar') { // If you have configured more than one global server connection, you can specify its name
          sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=testproject -Dsonar.sources=. -Dsonar.host.url=http://localhost:31174 -Dsonar.login=token "          }
          }
        } 
            
             stage('Quality Gate') {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
               } } }
}}
    
