#!/usr/bin/groovy
pipeline{
    agent{
        label{
            label "built-in"
        }
    }
    tools{
        maven "maven-3.9"
        //jdk "JDK-8"   
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
               sh "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.362.b08-1.amzn2.0.1.x86_64"
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
