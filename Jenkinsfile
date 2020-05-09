pipeline {
  agent any
  stages 
    {
    stage('Clean') {
      steps {
       sh 'mvn clean'
      }
    }
    stage('Compile') {
      steps {
       sh 'mvn compile'
      }
    }
    stage('Test') {
      steps {
       sh 'mvn test'
      }
    }
      stage('Deploying image with rundeck') {

    build job: 'new p'

    } 
  }
}
