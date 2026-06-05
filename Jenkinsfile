pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Clonage du repo GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Construction de l image Docker...'
                sh 'docker build -t devops-pipeline:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Test de l image Docker...'
                sh 'docker run --rm devops-pipeline:latest nginx -t'
            }
        }
    }

    post {
        success {
            echo 'Pipeline terminée avec succès!'
        }
        failure {
            echo 'Echec de la pipeline!'
        }
    }
}