#!/usr/bin/groovy
pipeline{
    agent{
        label{
            label "built-in"
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
               sh "JAVA_HOME=/var/lib/jenkins/tools/hudson.model.JDK/JDK-8/openlogic-openjdk-8u362-b09-linux-x64"
                sh "java -version"
               sh "mvn clean"
            }
        }
        stage ("Building war file") {
            steps{
                sh "mvn package"
            }
        }
        
        
    
} 
}
