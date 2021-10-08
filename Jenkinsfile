pipeline{
    agent any
    tools {
      maven 'maven'
    }
    stages{
        stage("clone git"){
            steps{
            git credentialsId: 'c72a2eac-4c23-4dc1-b225-4cc03a2d2a00', url: 'https://github.com/vijaykrishna121/hello-world.git'
            }
        }
        stage("build"){
            steps{
            sh "mvn clean install"
            }
        }
        stage("deploy"){
            steps{
                sh "ansiblePlaybook credentialsId: '85d7b729-0df3-4e4f-b56d-e3cfb7ffe455', disableHostKeyChecking: true, installation: 'Ansible', inventory: 'dev.inv', playbook: 'deploy.yml'"
            }
        }
    }
}
