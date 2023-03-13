pipeline {
    agent {
        dockerfile  true
    }

    environment {
    dockerimagename = "vajgi90/kubepy"
    dockerImage = ""
    }

    stages {
    stage('Checkout Source') {
      steps {
        git 'https://github.com/vajgi90/kube-jenkins-api.git'
      }
    }

    stage('Build image') {
      steps{
        script {
          dockerImage = docker.build dockerimagename
        }
      }
    }

    stage('Pushing Image') {
      environment {
               registryCredential = 'DOCKERHUBCREDENTIAL'
           }
      steps{
        script {
          docker.withRegistry( 'https://registry.hub.docker.com', registryCredential ) {
            dockerImage.push("latest")
          }
        }
      }
    }
    }
}
