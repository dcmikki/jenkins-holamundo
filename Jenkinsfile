pipeline {
    agent any
    stages {
        stage('SALUDOS') {
            steps {
                sh '''
                        bash -c "./scripts/hola.sh"
                '''
            }
        }
        stage('ANSIBLE localhost Jenkins Master') {
            steps {
                sh '''
                        bash -c "./scripts/hola_ansible.sh"
                        ansible localhost -m ping
                '''
            }
        }
    }
}
