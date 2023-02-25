#!/usr/bin/groovy
pipeline{
    agent {
        label{
            label "slave-2"
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
               sh "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.362.b08-1.amzn2.0.1.x86_64"
               sh "mvn clean"
            }
        }
        stage ("Building war file") {
            steps{
                sh "mvn package"
            }
        }
        stage ('Deploy') {
			steps{
				sshagent(credentials : ["ad5d0717-3dfb-469a-8d83-26686a49abee"]) {
				
					//sh "ssh  -o StrictHostKeyChecking=no  ec2-user@172.31.81.49 uptime"
					sh'''
					sftp  -o StrictHostKeyChecking=no ec2-user@172.31.81.49 <<EOF
					put  /mnt/slave-2/workspace/declarative_pipeline_first_assignment/gameoflife-web/target/gameoflife.war /opt/tomcat/webapps
					/opt/tomcat/bin/shutdown.sh
				        /opt/tomcat/bin/shartup.sh
					!
					
					sftp  -o StrictHostKeyChecking=no ec2-user@172.31.86.164
					put  /mnt/slave-2/workspace/declarative_pipeline_first_assignment/gameoflife-web/target/gameoflife.war /opt/tomcat/webapps
					/opt/tomcat/bin/shutdown.sh
				        /opt/tomcat/bin/shartup.sh
					!
					'''
				
				}
			}
		}
                
      }
    
} 
