pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker compose build"
            }
        }
        stage('Deploy') {
            steps {
                sh "docker compose run --rm gradio-builder"
            }
        }
    }
}