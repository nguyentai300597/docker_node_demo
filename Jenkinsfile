pipeline {
    agent any  

    // tools {
    //     nodejs "NodeJS-18" // Tên  cài trong Jenkins 
    // }

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/nguyentai300597/docker_node_demo.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
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
