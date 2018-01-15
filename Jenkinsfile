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
        stage('ANSIBLE Feautes Hosts (JSON)') {
            steps {
                sh 'ansible all -m ping'
                sh '''
                        bash -c "sleep 7"
                '''
                sh 'ansible all -m setup'
            }
        }
        stage('ANSIBLE Update Jenkins Master and Slave') {
            steps {
                sh '''
                        ansible-playbook fullupdate-upgrade.yml
                '''
            }
        }
    }
}
