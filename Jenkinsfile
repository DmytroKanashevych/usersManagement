pipeline {
    agent any

    environment {
        DEPLOY_SERVER = 'ec2-54-91-35-165.compute-1.amazonaws.com'
        DEPLOY_USER = 'ec2-user'
        DEPLOY_PATH = '/opt/coldfusion2023/cfusion/wwwroot'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/DmytroKanashevych/usersManagement.git'
            }
        }

        stage('Deploy') {
            steps {
                sshagent(credentials: ['ab34997f-4705-4263-be0e-c26e97d377cf']) {
                    script {
                        sh """
                            scp -r * ${DEPLOY_USER}@${DEPLOY_SERVER}:${DEPLOY_PATH}
                        """
                    }
                }
            }
        }

        stage('Restart ColdFusion') {
            steps {
                sshagent(credentials: ['ab34997f-4705-4263-be0e-c26e97d377cf']) {
                    script {
                        sh """
                            ssh ${DEPLOY_USER}@${DEPLOY_SERVER} 'sudo systemctl restart coldfusion2023'
                        """
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Deployed successfully!'
        }
        failure {
            echo 'Something went wrong!'
        }
    }
}
