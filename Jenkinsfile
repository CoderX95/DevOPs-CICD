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
                sh "mvn clean deploy"
            }
        }
        stage('Docker image'){
            steps{
                sh "docker build -t demo ."
            }
        }
        stage('Docker container'){
            steps{
                sh "docker run -d --name conatiner -p 8090:8080 demo:latest"
            }
        }
    }
}