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

                      # sanity check
                      aws sts get-caller-identity || true

                      terraform init -input=false
                      terraform validate
                      terraform plan -out=tfplan
                    '''
                }
            }
        }
    }
}
