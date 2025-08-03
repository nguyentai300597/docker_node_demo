// pipeline {
//     // agent any
//      agent {
//     docker { image 'node:18-alpine' }
//   }

//     stages {
//         stage('Clone Code') {
//             steps {
//                 git branch: 'jenkinFix',
//                     url: 'https://github.com/nguyentai300597/docker_node_demo.git'
//             }
//         }

//         stage('Install Dependencies') {
//             steps {
//                 sh 'npm install' // nếu có Node.js
//             }
//         }

//         stage('Build Docker Image') {
//             steps {
//                 sh 'docker build -t my-app .'
//             }
//         }
//     }

//     post {
//         success {
//             echo '✅ Pipeline thành công!'
//         }
//         failure {
//             echo '❌ Có lỗi!'
//         }
//     }
// }

pipeline {
  agent any

  stages {
    stage('Clone Code') {
      steps {
        git branch: 'jenkinFix',
            url: 'https://github.com/nguyentai300597/docker_node_demo.git'
      }
    }

     stage('Build Docker Image') {
      steps {
        sh 'docker build -t my-node-app .'
      }
    }
    stage('Run Docker Container') {
      steps {
        sh 'docker run -d -p 3000:3000 --name my-node-container my-node-app'
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
         always {
            echo '🧹 Cleaning up...'
             // Xoá container nếu có tồn tại
            sh 'docker rm -f my-node-container || true'
    
            // sh 'docker rmi my-node-app || true'
    }
    }
}

