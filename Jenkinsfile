pipeline {
    agent any
    stages {
        stage('vcs') {
            steps {
                git branch: 'REL_INT_1.0', url:'https://github.com/srvarri/openmrs-core.git'
            }

        }
        stage('build') {
            steps {
                sh '/usr/share/maven/bin/mvn package'
            }
        }
        stage('build') {
            steps {
                sh '/usr/share/maven/bin/mvn package'
            }
        }
		stage ( 'artifacts') {
            steps {
                archiveArtifacts artifacts: '**/target/*.jar'
            }
		}
    }    
}    