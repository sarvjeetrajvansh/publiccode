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
           withSonarQubeEnv('sonar') { // If you have configured more than one global server connection, you can specify its name
          sh "${scannerHome}/bin/sonar-scanner -D"sonar.projectKey=testproject" -D"sonar.sources=." -D"sonar.host.url=http://184.172.242.29:31174" -D"sonar.login=58de6e344e9d9433bdce3ce4deee745547a3ce00"
            }
          }
            
             stage("Quality Gate") {
            steps {
                timeout(time: 1, unit: 'HOURS') {
                    // Parameter indicates whether to set pipeline to UNSTABLE if Quality Gate fails
                    // true = set pipeline to UNSTABLE, false = don't
                    waitForQualityGate abortPipeline: true
                }
        }
    }
}
