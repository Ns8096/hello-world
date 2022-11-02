pipeline{
    agent any
    
    tools{
        maven "Maven"
    }
    stages{
        stage("Download code"){
            steps{
                git 'https://github.com/Ns8096/hello-world.git'
            }
        }
        stage("BUild code"){
            steps{
                sh 'mvn package'
            }
        }
        stage("Create a docker image customized"){
            steps{
                sh 'sudo docker build -f Dockerfile -t knsb222/ns22:latest .'
                
            }
        }
        stage("Push img to docker hub"){
            steps{
                withDockerRegistry([ credentialsId: "Docker-Build", url: "https://hub.docker.com/" ]) {
                sh  'docker push knsb222/samplewebapp:latest'
            }
        }
    }
}
}
