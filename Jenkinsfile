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
