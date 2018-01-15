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
        stage('ANSIBLE Hosts Ping') {
            steps {
                sh '''
                        ansible all -m ping
                        bash -c "sleep 7"
                '''
            }
        }
        stage('ANSIBLE Features Hosts (JSON)') {
            steps {
                sh '''
                        ansible all -m setup
                        bash -c "sleep 10"
                '''
            }
        }
    }
}
