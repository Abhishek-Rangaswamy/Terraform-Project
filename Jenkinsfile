pipeline {
    agent any

    stages {
        stage('Terraform Init & Plan') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'aws-credentials',
                                                  usernameVariable: 'AWS_ACCESS_KEY_ID',
                                                  passwordVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh '''
                      cd envs/staging
                      export AWS_DEFAULT_REGION=us-east-1
                      
                      # Optional: quick check if credentials are injected
                      aws sts get-caller-identity
                      
                      terraform init -input=false
                      terraform validate
                      terraform plan -out=tfplan
                    '''
                }
            }
        }
    }
}
