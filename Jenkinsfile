pipeline {
     agent any  

    // tools {
    //     nodejs "NodeJS-18" // Tên  cài trong Jenkins 
    // }
    //  agent {
    //     docker {
    //         image 'docker:latest'
    //         args '-v /var/run/docker.sock:/var/run/docker.sock'
    //     }
    // }
     tools {
    // a bit ugly because there is no `@Symbol` annotation for the DockerTool
    // see the discussion about this in PR 77 and PR 52: 
    // https://github.com/jenkinsci/docker-commons-plugin/pull/77#discussion_r280910822
    // https://github.com/jenkinsci/docker-commons-plugin/pull/52
    'org.jenkinsci.plugins.docker.commons.tools.DockerTool' '18.09'
  }
  environment {
    DOCKER_CERT_PATH = credentials('id-for-a-docker-cred')
  }

    stages {
        stage('foo') {
      steps {
        sh "docker version" // DOCKER_CERT_PATH is automatically picked up by the Docker client
      }
    }
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
