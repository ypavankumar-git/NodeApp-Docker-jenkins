pipeline{
    agent {label 'pavan-jenkins-hoster-instance'}
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        doc_creds = credentials("e9aefd7f-157a-4320-9717-a00a33701190")
    }

    stages{
        stage('build image'){
            steps{
                sh 'sh build.sh'
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh 'docker tag nodeApp:latest ypavankumar123/nodeApp:latest'
                sh 'docker tag mysql:latest ypavankumar123/mysql:latest'
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && sudo docker push ypavankumar123/nodeApp:latest && sudo docker push ypavankumar123/mysql:latest'
              }
            }
        }
    }

