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
        stage('Deliver') { 
            echo 'upload file'
            steps{
                sshPublisher(
                    publishers: [
                        sshPublisherDesc(
                            configName: 'tm-api(10.15.4.48)', 
                            sshCredentials: [
                                encryptedPassphrase: '{AQAAABAAAAAQF9lQ/F9kw1sKs+nfiYHQBpN8kGZ4rTHD+LUaBJHh5bE=}', 
                                key: '', 
                                keyPath: '', 
                                username: 'root'
                            ], 
                            transfers: [
                                sshTransfer(
                                    cleanRemote: false, 
                                    excludes: '', 
                                    execCommand: '/opt/jenkins/jenkins_tmapi.sh', 
                                    execTimeout: 120000, 
                                    flatten: false, 
                                    makeEmptyDirs: false, 
                                    noDefaultExcludes: false, 
                                    patternSeparator: '[, ]+', 
                                    remoteDirectory: '', 
                                    remoteDirectorySDF: false, 
                                    removePrefix: 'target', 
                                    sourceFiles: 'target/my-app-1.0-SNAPSHOT.jar'
                                )
                            ], usePromotionTimestamp: false, 
                            useWorkspaceInPromotion: false, 
                            verbose: false
                        )
                    ]
                )
            }
        }
    }
}
