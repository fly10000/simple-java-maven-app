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
        unstash 'app'
        sh 'chmod a+x ./jenkins/scripts/deliver.sh'
        sleep 3
        sh 'bash scp -r target/my-app-1.0-SNAPSHOT.jar root@10.15.4.48:/opt/jenkins/' 
      }
    }
  }
}
