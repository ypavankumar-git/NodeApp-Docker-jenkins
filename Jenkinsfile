pipeline{
    agent any
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        dockerhub = credentials('e9aefd7f-157a-4320-9717-a00a33701190')
    }

    stages{
        stage('build image'){
            steps{
                sh 'ls -a'
                sh 'docker build -t nodeappimage .'
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh 'docker tag nodeappimage:latest ypavankumar123/nodeapp-jenkins:tagname'
                sh 'docker push ypavankumar123/nodeapp-jenkins:tagname'
            }
        }
    }