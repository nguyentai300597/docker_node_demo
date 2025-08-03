pipeline {
     agent any  

    // tools {
    //     nodejs "NodeJS-18" // Tên  cài trong Jenkins 
    // }
     agent {
        docker {
            image 'docker:latest'
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

        // stage('Install Dependencies') {
        //     steps {
        //        // sh 'npm install'
        //     }
        // }

        // stage('Run Tests') {
        //     steps {
        //         sh 'npm test'
        //     }
        // }

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
