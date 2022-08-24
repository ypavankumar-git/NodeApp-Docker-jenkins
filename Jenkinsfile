pipeline{
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
                sh 'docker build -t nodeappimage .'
            }
        }
    }
}