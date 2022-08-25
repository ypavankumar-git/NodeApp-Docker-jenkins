pipeline{
    agent {label 'pavan-jenkins-hoster-instance'}
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        docker_url = "https://registry.hub.docker.com"
        docker_registry_nodeapp = "ypavankumar123/nodeapp"
        docker_registry_mysql = "ypavankumar123/mysql"
        docker_creds_id = "e9aefd7f-157a-4320-9717-a00a33701190"
    }

    stages{
        stage('build image'){
            steps{
                script{
                    nodeappImage = docker.build(docker_registry_nodeapp, "-f ./routes/Dockerfile .")
                    mysqlImage = docker.build(docker_registry_mysql, "-f ./mysql/Dockerfile .")
                }
              }
            }
        stage('push image to dockerhub'){
            steps{
                script { 
                    docker.withRegistry('', docker_creds_id ) { 
                        nodeappImage.push() 
                        mysqlImage.push()
                    }
                } 
                // sh 'docker tag nodeapp:latest ypavankumar123/nodeapp:latest'
                // sh 'docker tag mysql:latest ypavankumar123/mysql:latest'
                // sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && sudo docker push ypavankumar123/nodeapp:latest && sudo docker push ypavankumar123/mysql:latest'
              }
            }
        }
    }

