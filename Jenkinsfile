pipeline {
    agent any 

    environment {
    dockerimagename = "vajgi90/kubepy"
    dockerImage = ""
    }

    stages {
    stage('Version Check') {
      steps {
        sh 'docker --version'
      }
    }

/*     stage('Build image') {
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
    } */
    }
}
