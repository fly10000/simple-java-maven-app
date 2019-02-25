pipeline {
  agent any
  tools{
    maven 'maven 3.6.0'
    jdk 'jdk1.8'
  }
  stages {
  stage ('Initialize') {
          steps {
              sh '''
                  echo "PATH = ${PATH}"
                  echo "M2_HOME = ${M2_HOME}"
              '''
          }
      }
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('deliver') {
      steps {
        sh 'chmod a+x ./jenkins/scripts/deliver.sh'
        sleep 3
        sh './jenkins/scripts/deliver.sh'
      }
    }
  }
}
