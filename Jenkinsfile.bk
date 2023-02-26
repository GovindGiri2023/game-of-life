#!/usr/bin/groovy
pipeline{
    parameters{
        string(name: "NAME", description: "Please enter where you want to execute this job?")
    }
    agent {
        label{
            label "${NAME}"
        }
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"
       // git "Git-tool"
        
       
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
               sh "mvn clean"
            }
        }
        stage ("Building war file") {
            steps{
                sh "mvn package"
            }
        }
        stage ("Deploying war to tomcat server") {
            steps{
                echo "$WORKSPACE"
                sh "cp $WORKSPACE/gameoflife-web/target/gameoflife.war /opt/tomcat/webapps/"
                sh "/opt/tomcat/bin/shutdown.sh"
                sh "/opt/tomcat/bin/startup.sh"
            }
        }
        
        stage ('Deploying to slave2') {
            steps{
                script{
                    if ("${NODE_NAME}" == "slave-1"){
                   
                        build job: "${JOB_NAME}", parameters: [[$class: 'StringParameterValue', name: 'NAME', value: "slave-2"]]
                  
                    }        
                }
                    
            }
                
        }
    
} 
}
