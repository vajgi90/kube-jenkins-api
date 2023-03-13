pipeline {
    agent any 

    environment {
    dockerimagename = "vajgi90/kubepy"
    DOCKERHUB_CREDENTIALS = credentials('DOCKERHUBCREDENTIAL')
    }

    stages {

    stage('Version Check') {
      steps {
        sh 'docker --version'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build -t $dockerimagename:latest .'
      }
    }

    stage('Login') {
      steps {
        sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
      }
    }

    stage('Push') {
      steps {
        sh 'docker push $dockerimagename:latest'
      }
    }    
    }
    post {
        always {
          sh 'docker logout'
        }
    }
}
