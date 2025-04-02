pipeline {
    agent any
    environment {
        TF_VAR_example = 'example-value'
    }
    stages {
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    def scannerHome = tool 'SonarScanner'
                    sh "${scannerHome}/bin/sonar-scanner"
                }
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
