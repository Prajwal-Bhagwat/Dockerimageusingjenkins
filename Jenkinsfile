pipeline {
    agent any

    stages {
        stage(' Compile Java') {
            steps {
                sh 'javac Hello.java'
                
            }
        }

        stage(' Build Docker Image') {
            steps {
                sh 'docker build -t my-app .'
            }
        }

        stage(' Run & Verify') {
            steps {
                
                sh 'docker run --name my-app-container my-app'
            }
        }
    }
}
