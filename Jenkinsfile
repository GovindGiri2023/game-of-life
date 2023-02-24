pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"
        
       
    }
    stages{
        stage("A"){
            steps{
                sh '''
                    env.JAVA_HOME = "${jdk}"
                    echo "installation path is ${jdk}"
                '''
               sh "mvn clean"
          
            }
        }
        stage ("Build") {
            steps{
                sh "mvn package"
            }
        }
    
}
}
