pipeline {
    agent any
    environment {
        // Enlazamos de forma segura la credencial de Jenkins a la variable del sistema
        ROOT_PASSWORD = credentials('mariadb-secret-key') [cite: 203, 205]
    }
    stages {
        stage('Limpieza') { [cite: 207]
            steps {
                // Elimina despliegues previos huérfanos o parados
                sh 'docker compose down --remove-orphans' [cite: 208, 209]
            }
        }
        stage('Despliegue seguro') { [cite: 212]
            steps {
                // Construye la imagen y levanta los contenedores en segundo plano
                sh 'docker compose up --build -d' [cite: 213, 214]
            }
        }
    }
}
