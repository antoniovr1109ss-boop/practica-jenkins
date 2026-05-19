pipeline {
    agent any
    environment {
        ROOT_PASSWORD = credentials('mariadb-secret-key')
    }
    stages {
        stage('Limpieza') {
            steps {
                sh 'docker compose down --remove-orphans'
            }
        }
        stage('Despliegue seguro') {
            steps {
                sh 'docker compose up --build -d'
            }
        }
    }
}
