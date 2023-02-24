pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
        jdk 'java-1.8.0-openjdk-devel.x86_64'
    }
    stages{
        stage("A"){
            steps{
               sh "mvn package"
          
            }
        }
    
}
}
