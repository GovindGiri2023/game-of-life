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
                    JAVA_HOME=/usr/lib/jvm/java8/openlogic-openjdk-8u362-b09-linux-x64
                    export PATH=$PATH:$JAVA_HOME/bin
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
