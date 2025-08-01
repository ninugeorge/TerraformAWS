pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                git 'https://github.com/ninugeorge/TerraformAWS.git'
            }
        }

        stage('Init Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply Terraform') {
            steps {
                input message: 'Do you want to apply the changes?'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
