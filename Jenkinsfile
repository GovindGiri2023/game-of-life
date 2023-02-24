pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
    }
    stages{
        stage("A"){
           // tools {
           //        jdk "JDK-8"
           //     }
            steps{
               sh "mvn package"
          
            }
        }
    
}
}
