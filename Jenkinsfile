pipeline {
    agent any
    environment {
        SWIFT_VERSION = "5.7" // Specify the Swift version
    }
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the repository...'
                checkout scm
            }
        }
        stage('Setup') {
            steps {
                echo 'Setting up the environment...'
                sh '''
                    swift --version
                '''
            }
        }
        stage('Build') {
            steps {
                echo 'Building the project...'
                sh '''
                    swift build --disable-sandbox
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh '''
                    swift test --disable-sandbox
                '''
            }
        }
    }
    post {
        always {
            echo 'Cleaning up workspace...'
            cleanWs()
        }
        success {
            echo 'Build and tests completed successfully!'
        }
        failure {
            echo 'Build or tests failed.'
        }
    }
}