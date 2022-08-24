pipeline{
    agent {label 'pavan-jenkins-hoster-instance'}
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
                sh 'sudo docker build -t nodeappimage .'
            }
        }
        stage('push image to dockerhub'){
            steps{
                sh 'sudo docker tag nodeappimage:latest ypavankumar123/nodeapp-jenkins:nodeappimage'
                sh 'sudo docker push ypavankumar123/nodeapp-jenkins:nodeappimage'
                withDockerRegistry([ credentialsId: "e9aefd7f-157a-4320-9717-a00a33701190", url: "" ]) {
                  sh 'sudo docker push ypavankumar123/nodeapp-jenkins:nodeappimage'
              }
            }
        }
    }
}