pipeline {
    agent any
        stage('Build') {
            steps {
                sh """
                    docker compose -f docker-compose-preview.yml build
                """
            }
        }
        stage('Deploy') {
            steps {
                sh "docker compose -f docker-compose-preview.yml up -d"
            }
        }
    }
}