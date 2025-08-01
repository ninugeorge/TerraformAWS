pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('ebbea1a5-2791-4a78-9911-a3d2e3916714')
        AWS_SECRET_ACCESS_KEY = credentials('ebbea1a5-2791-4a78-9911-a3d2e3916714')
        AWS_DEFAULT_REGION = 'us-east-1'
    }

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
