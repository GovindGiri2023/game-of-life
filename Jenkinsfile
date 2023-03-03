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
        stage ("Deploying war file to Docker container"){
            steps{
                sh "sudo docker run -dp 8080:8080 --name tomcat_${BRANCH_NAME} tomcat /bin/bash -c catalina.sh run"
                sh "sudo docker cp $WORKSPACE/gameoflife-web/target/gameoflife.war tomcat_${BRANCH_NAME}:/usr/local/tomcat/webapps/"
                
            }
        }
} 
}
