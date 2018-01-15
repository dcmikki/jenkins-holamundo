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
                sh '''
                        bash -c "./scripts/hola_ansible.sh"
                        ansible all -m ping
                '''
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
