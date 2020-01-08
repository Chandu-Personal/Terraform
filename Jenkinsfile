//###Jenkinsfile###
import groovy.json.JsonOutput
//git env vars
env.git_url = 'git@github.com:Chandu-Personal/Terraform.git'
env.git_branch = 'master'
env.credentials_id = 'chandu'
env.jenkins_server_url = 'https://18.139.221.140'
env.jenkins_node_custom_workspace_path = "${JENKINS_HOME}/workspace"
env.jenkins_node_label = 'master'
env.terraform_version = '0.11.3'

pipeline {
agent any

stages {
    
stage('fetch_latest_code') {
steps {
            // Get Go code from a GitHub repository
            git credentialsId: 'chandu', url: 'git@github.com:Chandu-Personal/Terraform.git'


               }
}
  

stage('install_deps') {
steps {
            script{tool name: 'terraform.0.11.3' , type: 'Terraform' }
               }
            }
}
}
