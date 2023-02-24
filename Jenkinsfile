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
                    export PATH=$PATH:/usr/lib/jvm/java8/openlogic-openjdk-8u362-b09-linux-x64/bin
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
