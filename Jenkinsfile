pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"
        
       
    }
    stages{
        stage("Clean workspace"){
            steps{
               cleanWs ()
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
