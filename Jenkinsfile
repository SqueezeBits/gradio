pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker compose -f docker-compose-preview.yml build"
            }
        }
        stage('Deploy') {
            steps {
                sh "docker compose -f docker-compose-preview.yml run --rm gradio-builder"
            }
        }
    }
}