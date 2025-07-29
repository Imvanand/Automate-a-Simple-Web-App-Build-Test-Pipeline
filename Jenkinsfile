pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'chmod +x hello.sh'
                sh './hello.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }
    }
    post {
        success {
            archiveArtifacts artifacts: '**/*.sh', onlyIfSuccessful: true
        }
    }
}
