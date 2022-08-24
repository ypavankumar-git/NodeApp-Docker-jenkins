pipeline{
    //agent {label 'pavan-jenkins-hoster-instance'}
    agent any
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
    }

    stages{
        stage('build image'){
            steps{
                sh 'ls -a'
                sh 'sudo docker build -t nodeappimage .'
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh 'sudo docker tag nodeappimage:latest ypavankumar123/nodeapp-jenkins:nodeappimage'
                withCredentials([usernamePassword(credentialsId: 'e9aefd7f-157a-4320-9717-a00a33701190', passwordVariable: 'pass', usernameVariable: 'user')]) {
                   sh 'echo "$user---$pass" > tmp.txt && cat tmp.txt'
                   sh 'sudo docker login -u $user -p $pass && sudo docker push ypavankumar123/nodeapp-jenkins:nodeappimage'
                   //sh 'sudo docker login -u $user -p $pass && sudo docker push ypavankumar123/nodeapp-jenkins:nodeappimage'

              }
            }
        }
    }
}
