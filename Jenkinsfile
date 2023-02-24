pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
    }
    stages{
        stage("A"){
            tools {
                   jdk "jdk-1.8.101"
                }
            steps{
               sh "mvn package"
          
            }
        }
    
}
}
