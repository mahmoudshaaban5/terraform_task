pipeline {
    agent any
    tools {
      terraform 'terraform'
    }
    stages {

        stage('terraform format check') {
            steps{
                withAWS(credentials: 'aws', region: 'eu-west-3') 
                {
                     sh 'terraform fmt'
                     sh 'terraform init'
                     sh 'terraform apply --var-file prod.tfvars --auto-approve'
                        // sh 'terraform destroy --var-file prod.tfvars --auto-approve'
                }
            }
        }
        stage('ansible configration') {
            steps{
                    sh 'ansible-playbook -i inventory ansible/playbook.yml'
            }
            }
            }
        }  



    