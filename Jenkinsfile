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
                sh 'docker build -t nodeappimage .'
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh 'docker tag nodeappimage:latest ypavankumar123/nodeapp-jenkins:nodeappimage'
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && sudo docker push ypavankumar123/nodeapp-jenkins:nodeappimage'
              }
            }
        }
    }

