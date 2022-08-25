pipeline{
    agent {label 'pavan-jenkins-hoster-instance'}
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        docker_url = "https://registry.hub.docker.com"
        docker_registry_nodeapp = "https://hub.docker.com/repository/docker/ypavankumar123/nodeapp"
        docker_registry_mysql = "https://hub.docker.com/repository/docker/ypavankumar123/mysql"
        docker_creds_id = "e9aefd7f-157a-4320-9717-a00a33701190"
    }

    stages{
        stage('build image'){
            steps{
                script{
                    sh 'ls -a'
                    nodeapp = docker.build
                }
              }
            }
        stage('push image to dockerhub'){
            steps{
                sh 'docker tag nodeapp:latest ypavankumar123/nodeapp:latest'
                sh 'docker tag mysql:latest ypavankumar123/mysql:latest'
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && sudo docker push ypavankumar123/nodeapp:latest && sudo docker push ypavankumar123/mysql:latest'
              }
            }
        }
    }

