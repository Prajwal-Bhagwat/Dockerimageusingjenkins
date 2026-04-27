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

        stage(' Git Push') {
            steps {
                sh 'git config --global user.email "jenkins@example.com"'
                sh 'git config --global user.name "jenkins"'
                sh 'git add .'
                sh 'git commit -m "update from jenkins" || true'
                sh 'git push origin main'
            }
        }
    }

}
