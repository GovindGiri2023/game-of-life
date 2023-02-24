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
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                    echo "JAVA_HOME= ${JAVA_HOME}"
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
