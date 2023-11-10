pipeline{
    agent{
        node {
            label 'maven'
        }
    }
environment{
    PATH = "/opt/apache-maven-3.9.5/bin:$PATH"
}

    stages{
        stage('Build'){
            steps{
                echo "-------------------Building----------------------"
                sh "mvn clean deploy"
            }
        }
        stage('Docker image'){
            steps{
                echo "---------------Docker Image build----------------------"
                sh "docker build -t demo ."
            }
        }
        stage('SonarQube analysis') {
            environment{
                scannerHome = tool 'sonar scanner'
            }
            steps{
                echo "----------------Sonarscanner----------------------"
                withSonarQubeEnv('sonarqube-server') { // If you have configured more than one global server connection, you can specify its name
                sh "${scannerHome}/bin/sonar-scanner"
                }
                }
        }
        stage("Quality Gate"){
            steps{
                script{
                    timeout(time: 1, unit: 'HOURS') { // Just in case something goes wrong, pipeline will be killed after a timeout
                    def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
                    if (qg.status != 'OK') {
                    error "Pipeline aborted due to quality gate failure: ${qg.status}"
                    }
                    }
                }
            }
        }
            
    }
}
