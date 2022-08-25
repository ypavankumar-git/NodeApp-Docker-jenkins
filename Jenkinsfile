pipeline{
    agent {label 'pavan-jenkins-hoster-instance'}
    tools{
        nodejs 'NodeJS'
    }
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        docker_registry_nodeapp = "ypavankumar123/nodeapp"
        docker_registry_mysql = "ypavankumar123/mysql"
        docker_creds_id = "e9aefd7f-157a-4320-9717-a00a33701190"
    }

    stages{
        stage('Build image'){
            steps{
                script{
                    nodeappImage = docker.build(docker_registry_nodeapp, "-f ./routes/Dockerfile .")
                    mysqlImage = docker.build(docker_registry_mysql, "-f ./mysql/Dockerfile .")
                }
              }
            }
        stage('Push Image'){
            steps{
                script { 
                    docker.withRegistry('', docker_creds_id ) { 
                        nodeappImage.push() 
                        mysqlImage.push()
                    }
                } 
              }
            }
        }
    }

