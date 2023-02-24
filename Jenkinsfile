pipeline{
    agent{
        label "slave-1"
    }
    tools{
        maven "maven-3.9"
        jdk "JDK-8"
        env.JAVA_HOME = "${jdk}"
       
    }
    stages{
        stage("A"){
            steps{
                sh '''
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
