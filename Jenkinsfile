def registry = 'https://bitsdevops.jfrog.io'
def server
def rtMaven = Artifactory.newMavenBuild()
def buildInfo

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
                sh "mvn clean install"
            }
        }
        stage('Docker image'){
            steps{
                echo "---------------Docker Image build----------------------"
                sh "docker build -t demo ."
            }
        }
       /*stage('SonarQube analysis') {
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
        stage("Jar Publish") {
            steps {
                script {
                        echo '<--------------- War Publish Started --------------->'
                        def server = Artifactory.newServer url:registry+"/artifactory" ,  credentialsId:"art_creds"
                        def properties = "buildid=${env.BUILD_ID},commitid=${GIT_COMMIT}";
                        def uploadSpec = """{
                            "files": [
                                {
                                "pattern": "maven-project-site/(*)",
                                "target": "libs-release-local/{1}",
                                "flat": "false",
                                "props" : "${properties}",
                                "exclusions": [ "*.sha1", "*.md5"]
                                }
                            ]
                        }"""
                        def buildInfo = server.upload(uploadSpec)
                        buildInfo.env.collect()
                        server.publishBuildInfo(buildInfo)
                        echo '<--------------- war Publish Ended --------------->'  
                
                }
            }   
        }  */
        stage ('Artifactory configuration') {
        // Obtain an Artifactory server instance, defined in Jenkins --> Manage Jenkins --> Configure System:
        server = Artifactory.server SERVER_ID

        // Tool name from Jenkins configuration
        rtMaven.tool = MAVEN_TOOL
        rtMaven.deployer releaseRepo: ARTIFACTORY_LOCAL_RELEASE_REPO, snapshotRepo: ARTIFACTORY_LOCAL_SNAPSHOT_REPO, server: server
        rtMaven.resolver releaseRepo: ARTIFACTORY_VIRTUAL_RELEASE_REPO, snapshotRepo: ARTIFACTORY_VIRTUAL_SNAPSHOT_REPO, server: server
        buildInfo = Artifactory.newBuildInfo()
    }
         stage ('Publish build info') {
        server.publishBuildInfo buildInfo
    }
            
    }
}
