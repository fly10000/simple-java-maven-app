pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /root/.m2:/root/.m2'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn -B -DskipTests clean package'
      }
    }
    stage('deliver') {
      steps {
        sh 'echo $PATH'
        sh 'whoami'
        sh 'chmod 777 ./jenkins/scripts/deliver.sh'
        sleep 3
        sh './jenkins/scripts/deliver.sh'
      }
    }
  }
}
