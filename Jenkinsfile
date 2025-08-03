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
    stage('Checkout') {
            steps {
                checkout scm // <-- dòng này là bắt buộc
            }
        }
    stage('Install') {
      steps {
        sh 'docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app node:18 npm install'
      }
    }
  }
}
