pipeline {
  agent any
  stages {
    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh 'echo "begining steps"'
            jiraComment(issueKey: 'DEVOPS-756', body: 'http://sdfkmsdflkds')
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
        stage('error') {
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
    stage('error') {
      steps {
        cleanWs(cleanWhenSuccess: true, cleanWhenNotBuilt: true, cleanWhenFailure: true, cleanWhenAborted: true)
      }
    }
  }
}