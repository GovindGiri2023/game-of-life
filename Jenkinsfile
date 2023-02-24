pipeline{
    agent{
        label "slave-2"
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"
        git "Git-tool"
        
       
    }
    stages{
        stage("Clean workspace"){
            steps{
              // cleanWs ()
                sh "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.362.b08-1.amzn2.0.1.x86_64"
               sh "mvn clean"
          
            }
        }
        stage ("Build") {
            steps{
                sh "mvn package"
            }
        }
        stage ("Deploy to tocat") {
            steps{
                echo "$JENKINS_HOME"
                //sh cp $/gameoflife-web/target/gameoflife.war
            }
        }
    
}
}
