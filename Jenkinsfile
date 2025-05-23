pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'saravjot91/express-server'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE} ."
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    script {
                        sh '''
                            echo "$PASSWORD" | docker login -u "$USERNAME" --password-stdin
                            docker push ${DOCKER_IMAGE}
                            docker logout
                        '''
                    }
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                    docker stop express-server || true
                    docker rm express-server || true
                    docker run -d -p 3000:3000 --name express-server $DOCKER_IMAGE
                '''
            }
        }
    }
}
