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
        stage('ANSIBLE Hosts Ping)') {
            steps {
                sh '''
                        ansible all -m ping
                        bash -c "sleep 5"
                '''
            }
        }
        stage('ANSIBLE Hosts Setup (JSON)') {
            steps {
                sh '''
                        ansible all -m setup
                '''
            }
        }
        stage('ANSIBLE Update Jenkins Master and Slave') {
            steps {
                sh '''
                        ansible-playbook fullupdate-upgrade.yml                        
                        bash -c "sleep 10"
                '''
            }
        }
    }
    post {
        success {
            emailext(
                subject: "${env.JOB_NAME} [${env.BUILD_NUMBER}] Funcionando !!!!",
                body:""" '${env.JOB_NAME} [${env.BUILD_NUMBER}]' Funciona !!": Verifica la salida de ${env.JOB_NAME} [${env.BUILD_NUMBER}]/a> """,
                to: "diegoytess@gmail.com"
            ) 
        }	
    }
}
