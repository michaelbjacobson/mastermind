node {
    def app

    stage('Clone repo') {
        sh 'docker logout https://445579089480.dkr.ecr.us-east-1.amazonaws.com'
        checkout scm
    }

    stage('Build image') {
        app = docker.build("mastermind")
    }

    stage('Run unit tests') {
        app.inside {
            sh 'mvn test'
        }
    }

    stage('Push image') {
        docker.withRegistry("https://445579089480.dkr.ecr.us-east-1.amazonaws.com", "ecr:us-east-1:aws-credentials") {
            app.push('latest')
        }
    }
}