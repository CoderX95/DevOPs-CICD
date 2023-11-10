def registry = 'https://bitsdevops.jfrog.io'
def imageName = 'bitsdevops.jfrog.io/libs-docker-local/trial'
def version   = '1.0.2'

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
        stage("Build Stage"){
            steps {
                 echo "<----------- Build started ---------->"
                sh 'mvn clean deploy -Dmaven.test.skip=true'
                 echo "<----------- Build complted ---------->"
            }
        }
        stage("Test Stage"){
            steps{
                echo "<----------- unit test started -------------->"
                sh 'mvn surefire-report:report'
                 echo "<----------- unit test Complted -------------->"
            }
        }

        stage('SonarQube analysis') {
            environment{
                scannerHome = tool 'sonar scanner'
            }
            steps{
                echo "<--------------- sonar scan -------------->"
                withSonarQubeEnv('sonarqube-server') { // If you have configured more than one global server connection, you can specify its name
                sh "${scannerHome}/bin/sonar-scanner"
                echo "<--------------- sonar scan ends -------------->"
                }
                }
        }
        stage("Quality Gate"){
            steps{
                echo "<--------------- qualitygate -------------->"
                script{
                    timeout(time: 60, unit: 'SECONDS') { // Just in case something goes wrong, pipeline will be killed after a timeout
                    def qg = waitForQualityGate() // Reuse taskId previously collected by withSonarQubeEnv
                    if (qg.status != 'OK') {
                    error "Pipeline aborted due to quality gate failure: ${qg.status}"
                    }
                    }
                }
            }
        }
        
        stage(" Docker Build ") {
        steps {
            script {
            echo '<--------------- Docker Build Started --------------->'
            app = docker.build(imageName+":"+version)
            echo '<--------------- Docker Build Ends --------------->'
            }
        }
        }

        stage (" Docker Publish "){
            steps {
                script {
                echo '<--------------- Docker Publish Started --------------->'  
                    docker.withRegistry(registry, 'art_creds'){
                        app.push()
                    }    
                echo '<--------------- Docker Publish Ended --------------->'  
                }
            }
        }

        stage(" Deploy ") {
            steps {
                script {
                    echo '<--------------- Helm Deploy Started --------------->'
                    sh 'helm install ttrend ttrend-0.1.0.tgz'
                    echo '<--------------- Helm deploy Ends --------------->'
                }
            }
        }
    }
}
