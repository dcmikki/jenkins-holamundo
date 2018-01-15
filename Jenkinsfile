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
        stage('ANSIBLE Features Hosts (JSON)') {
            steps {
                sh '''
                        ansible localhost -m setup
                        bash -c "sleep 7"
                        ansible rackspace -m setup
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
