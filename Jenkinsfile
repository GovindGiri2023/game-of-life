pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
        jdk 'jdk8'
    }
    stages{
        stage("A"){
            steps{
               sh "mvn package"
          
            }
        }
    
}
}
