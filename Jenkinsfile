pipeline {
  agent any
   
    stage('deliver') {
      steps {
        sh 'chmod a+x ./jenkins/scripts/deliver.sh'
        sleep 3
        sh './jenkins/scripts/deliver.sh'
      }
    }
  }
}
