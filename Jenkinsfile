pipeline {
   
  agent any
   
  stages {
     
      stage('Build') {
       agent {
           docker {
               image 'maven:3-alpine'
               args '-v /root/.m2:/root/.m2'
           }
       }
      steps {
        sh 'mvn -B -DskipTests clean package'
        stash includes: '**/target/*.jar', name: 'app'
      }
    }
    stage('deliver') {
      steps {
        sh 'chmod a+x ./jenkins/scripts/deliver.sh'
        sleep 3
        sh 'bash ./jenkins/scripts/deliver.sh'
      }
    }
  }
}
