#!/usr/bin/groovy
pipeline{
    agent{
        label{
            label "slave-1"
        }
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"   
    }
    stages{
        stage ("Cleaning workspace") {
            steps{
               cleanWs ()
            }
        }
        stage("Checkout code") {
            steps{
                checkout scm
            }
         }
        stage("maven cleaning"){
            steps{   
               //sh "JAVA_HOME=/var/lib/jenkins/tools/hudson.model.JDK/JDK-8/openlogic-openjdk-8u362-b09-linux-x64"
                sh "java -version"
               sh "mvn clean"
            }
        }
        stage ("Building war file") {
            steps{
                sh "mvn package"
            }
        }
        stage ("Build Docker image"){
            steps{
                sh "sudo docker build . -t tomcat:9.0"
            }
        }
        stage ("Removing old container"){
            steps{
                sh "sh "sudo docker rm -f tomcat_${BRANCH_NAME} || true"
            }
        }
        
        stage ("Deploying war file to Docker container"){
            steps{
                sh "sudo docker run -dp 9090:8080 -v volume1:/opt/apache-tomcat-9.0.73/webapps --name tomcat_${BRANCH_NAME} tomcat:9.0"
                sh "sudo cp -r $WORKSPACE/gameoflife-web/target/gameoflife.war /var/lib/docker/volumes/volume1/_data/"
                               
            }
        }
} 
}
