pipeline{
    agent any 
    stages {
        stage("deploy terraform"){
            steps{
                withCredentials([[
                    $class: 'AmazonWebservicesCredentialsBinding',
                    credentialId: "jenkins-terraform",
                    accessKeyVariable: "AWS_ACCESS_KEY_ID",
                    secretKeyVariable: "AWS_SECRET_KEY_ID"

                ]]){
                    sh 'terraform init'
                    sh 'terraform plan -var ${config.access_key}=${AWS_ACCESS_KEY_ID} -var ${config.secret_key}=${AWS_SECRET_KEY_ID} -out Outputforplan'
                    sh 'terraform apply -input=false Outputforplan'
                }
            }
        }

    }
}