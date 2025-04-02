pipeline {
    agent any
    environment {
        TF_VAR_example = 'example-value'
    }
    tools {
        sonarQubeScanner 'SonarScanner'  // 👈 this matches the name in Jenkins
    }
    stages {
        stage('SonarQube Scan') {
            steps {
                withSonarQubeEnv('SonarQube') {
                    sh 'sonar-scanner'
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
