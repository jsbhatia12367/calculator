node {
    def app
	
	agent any
    tools {
        maven 'apache-maven-3.6.3' 
    }

    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */

        checkout scm
    }
	stage('Build project'){
	    sh 'mvn clean install'
	}

    stage('Build image') {
        /* This builds the actual image */

        app = docker.build("81196/calculator")
    }

    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }

    stage('Push image') {
        docker.withRegistry('https://registry.hub.docker.com', 'sri-docker') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
	stage('Deploying image with rundeck') {
     
        build job: 'new p'
        
      }
}
