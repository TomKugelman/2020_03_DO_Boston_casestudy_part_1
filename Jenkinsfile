pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dir('App') {
                    sh "git clone https://github.com/TomKugelman/2020_03_DO_Boston_casestudy_part_1.git"
                    sh "docker build -t tomkugelman/capstone-flask:latest ."
                    withDockerRegistry([ credentialsID: "DockerHub"]) {
                        sh "docker push tomkugelman/capstone-flask:latest"
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                dir('App') {
                    sh 'ANSIBLE PLAYBOOK CALL HERE'
                    deleteDir()
                }
            }
        }
    }
}