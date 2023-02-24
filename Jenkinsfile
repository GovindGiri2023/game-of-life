pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
    }
    stages{
        stage("A"){
            steps{
               sh "mvn package"
          
            }
        }
    
}
}
