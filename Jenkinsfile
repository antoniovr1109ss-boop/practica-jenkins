pipeline {
    agent any

    stages {
        stage('Limpieza') {
            steps {
                echo 'Limpiando contenedores antiguos...'
                withCredentials([string(credentialsId: 'ROOT_PASSWORD', variable: 'ROOT_PASSWORD')]) {
                    withEnv(["ROOT_PASSWORD=${ROOT_PASSWORD}"]) {
                        sh 'docker compose down --remove-orphans || true'
                    }
                }
            }
        }
        stage('Despliegue seguro') {
            steps {
                echo 'Levantando la nueva infraestructura con Docker Compose...'
                withCredentials([string(credentialsId: 'ROOT_PASSWORD', variable: 'ROOT_PASSWORD')]) {
                    withEnv(["ROOT_PASSWORD=${ROOT_PASSWORD}"]) {
                        sh 'docker compose up -d --build'
                    }
                }
            }
        }
    }
}
