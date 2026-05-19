pipeline {
    agent any
    stages {
        stage('Despliegue') {
            steps {
                withCredentials([string(credentialsId: 'mariadb-secret-key', variable: 'DB_PASS')]) {
                    sh '''
                        echo "ROOT_PASSWORD=$DB_PASS" > .env
                        docker compose down -v
                        docker compose up -d --build
                    '''
                }
            }
        }
    }
}
