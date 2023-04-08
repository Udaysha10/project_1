pipeline{
    agent any
    stages{
        stage("checkout"){
            steps{
                echo "${BUILD_NUMBER} is running"
                sh "git --version"
                sh "whoami"
                sh "pwd"
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/Udaysha10/project_1.git'
                }
        }
        stage("build & run"){
            steps{
            sh '''
            pwd
            docker build -t udaysha10/web:${BUILD_NUMBER} .
            docker run -t -d --name web-${BUILD_NUMBER} -p 8081:80 udaysha10/web:${BUILD_NUMBER}
            '''
            }
        }
    }
}