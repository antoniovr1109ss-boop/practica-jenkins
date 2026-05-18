pipeline {
    agent any

    environment {
        ROOT_PASSWORD = credentials('mariadb-secret-key')
    }

    stages {
        stage('Limpieza') {
            steps {
                echo 'Limpiando contenedores antiguos...'
                sh 'docker compose down --remove-orphans || true'
            }
        }

        stage('Despliegue seguro') {
            steps {
                echo 'Levantando la nueva infraestructura con Docker Compose...'
                sh 'docker compose up -d --build'
            }
        }
    }
}
