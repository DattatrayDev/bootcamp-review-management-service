pipeline {
    agent any

    stages {
        stage('Build App') {
            steps {
                      sh 'sudo docker build -t dattatrayd/review-management-jenkins:latest .'
            }
        }
        stage('Test') {
            steps {
           withCredentials([string(credentialsId: 'dockerHubPassword', variable: 'dockerHubPassword')]) 
         {
       sh "sudo docker login -u dattatrayd -p ${dockerHubPassword}"
	       }
    	sh 'sudo docker push dattatrayd/review-management-jenkins:latest'
            }
        }
        
    }
}
