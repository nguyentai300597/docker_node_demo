pipeline {
    agent {
        docker {
            image 'node:18'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'jenkinFix',
                    url: 'https://github.com/nguyentai300597/docker_node_demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-app .'
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline thành công!'
        }
        failure {
            echo '❌ Có lỗi!'
        }
    }
}
