// Este es el primer primer borrador del Jenkinsfile. Se tiene que mirar todo la sintaxis
// Ver como poner correctamente los comandos bash, multi-linea, variables, path, etc
// Lo mejor es trocear el pipeline e ir testeando cada 'stage' en cadena
pipeline {
    agent any
    stages {
        //stage('Git Checkout') {
        //    steps {
        //        sh 'echo HOLA MUNDO'
        //   }
        //}
        stage('Saludos') {
            steps {
                sh 'bash -c ./scripts/hola.sh'
            }
        }
        stage('Ansible Module') {
            steps {
                sh 'bash -c ./scripts/hola_ansible.sh'
            }
        }
    }
}
