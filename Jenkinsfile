pipeline{
	agent any
	stages{
		stage("clean workspace"){
			steps{
				cleanWs()
			}
		}
		stage("checkout scm"){
			steps{
				checkout scm
			}
		}
		stage ("build package"){
			steps{
				sh "mvn clean"
				sh "mvn package"
			}
		}
		
		stage("deploy war file to tomcat container"){
			steps{  
				sh "sudo docker rm -f tomcat-server || true"
				sh "ansible-playbook docker.yml"
			}
		}
	}

}
