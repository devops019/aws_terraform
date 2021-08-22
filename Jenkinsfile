pipeline{
    agent any 
    stages {
        stage("deploy terraform"){
            steps{
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: "jenkins-terraform",
                    accessKeyVariable: "AWS_ACCESS_KEY_ID",
                    secretKeyVariable: "AWS_SECRET_KEY_ID"

                ]]){
                    sh '/usr/local/bin/terraform init -backend-config="access_key=${AWS_ACCESS_KEY_ID}" -backend-config="secret_key=${AWS_SECRET_KEY_ID}"'
                    sh '/usr/local/bin/terraform plan -var "access_key=${AWS_ACCESS_KEY_ID}" -var "secret_key=${AWS_SECRET_KEY_ID}" -out Outputforplan'
                    sh '/usr/local/bin/terraform apply -input=false Outputforplan'
                }
            }
        }

    }
}