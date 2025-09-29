pipeline {
    agent any
    environment {
        AWS_CREDS = credentials('aws-credentials')
        AWS_DEFAULT_REGION = 'us-east-1'
    }
    stages {
        stage ('Terraform Init Plan') {
            steps {
                sh '''
                    export AWS_ACCESS_KEY_ID=${AWS_CREDS_USR}
                    export AWS_SECRET_ACCESS_KEY=${AWS_CREDS_PSW}
                    cd envs/staging
                    terraform init -input=false
                    terraform validate
                    terraform plan -out=tfplan
                '''

            }
        }
    }