pipeline {
   agent any
   tools { 
        maven 'maven 3.6.0' 
        jdk 'jdk1.8' 
    }
  stages {
      stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
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
