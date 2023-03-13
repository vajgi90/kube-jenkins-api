pipeline {
    agent any 
    options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
    }    

    environment {
    DOCKERHUB_CREDENTIALS = credentials('DOCKERHUBCREDENTIAL')
    }

    stages {
    stage('Build') {
      steps {
        sh 'docker build -t vajgi90/kubepy .'
      }
    }

    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }        

    stage('Push') {
      steps {
        sh 'docker push vajgi90/kubepy'
      }
    }   
    }
  post {
    always {
      sh 'docker logout'
    }
  }
}
