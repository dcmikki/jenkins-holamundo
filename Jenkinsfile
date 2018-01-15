// Este es el primer primer borrador del Jenkinsfile. Se tiene que mirar todo la sintaxis
// Ver como poner correctamente los comandos bash, multi-linea, variables, path, etc
// Lo mejor es trocear el pipeline e ir testeando cada 'stage' en cadena
pipeline {
    agent any
    stages {
        stage('SALUDOS') {
            steps {
                sh 'bash -c ./scripts/hola.sh'
            }
        }
        stage('ANSIBLE MODULE') {
            steps {
                sh 'bash -c ./scripts/hola_ansible.sh'
            }
        }
    }
}
