pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''npm cache clean -f
npm install
npm run build:dev'''
        s3Upload 'ap-south-1-employee-onboarding-web'
      }
    }

  }
  environment {
    HOME = '.'
  }
}