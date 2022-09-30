pipeline {
    agent  { label 'OPENJDK11' }
    stages {
        stage('vcs') {
            steps {
                git branch: 'https://github.com/srvarri/openmrs-core.git'
            }

        }
        stage('build') {
            steps {
                sh '/usr/share/maven/bin/mvn package'
            }
        }
        stage('archive results') {
            steps {
                junit '**/surefire-reports/*.xml'
            }
        }