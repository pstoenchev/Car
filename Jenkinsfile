pipeline {
    agent any
    
    environment {
        LC_ALL = 'en_US.UTF-8'
        LANG = 'en_US.UTF-8'
        WORKSPACE = "${env.WORKSPACE}"
        
        // Update these according to your project
        SCHEME_NAME = 'CarInfo'
        PROJECT_NAME = 'CarInfo.xcodeproj'
    }
    
    stages {
        stage('Cleanup') {
            steps {
                echo 'Cleaning up workspace...'
                cleanWs()
                sh 'rm -rf ~/Library/Developer/Xcode/DerivedData/*'
            }
        }
        
        stage('Checkout') {
            steps {
                echo 'Checking out source code...'
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building the app...'
                sh """
                    xcodebuild clean build \
                    -project ${PROJECT_NAME} \
                    -scheme ${SCHEME_NAME} \
                    -configuration Debug \
                    -destination 'platform=iOS Simulator,name=iPhone 14,OS=16.0' \
                    CODE_SIGN_IDENTITY="" \
                    CODE_SIGNING_REQUIRED=NO \
                    CODE_SIGNING_ALLOWED=
