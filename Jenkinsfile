pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh script: '[[ "\$RANDOM" -ge "16000" ]] && echo "Passed!" || echo "Failed!"', label: "Randomly passing step"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
