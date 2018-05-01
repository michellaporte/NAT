pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'echo "begining steps"'
          }
        }
        stage('Build2') {
          steps {
            sh 'echo "second step"'
          }
        }
        stage('build3') {
          steps {
            sh 'ls'
          }
        }
      }
    }
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'Testing..'
          }
        }
        stage('') {
          steps {
            sh 'echo "errors"'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying....'
      }
    }
    stage('') {
      steps {
        cleanWs(cleanWhenSuccess: true, cleanWhenNotBuilt: true, cleanWhenFailure: true, cleanWhenAborted: true)
      }
    }
  }
}