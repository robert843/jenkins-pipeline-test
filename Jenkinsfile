pipeline {
  agent any
  stages {
    stage('changelog') {
      steps {
        script {
          sh "git fetch origin --tags master"
          
          def changelogTemplate = readFile(file: '.jenkins/changelog.tpl')
                   
          def changelogContent = gitChangelog returnType: 'STRING', template: changelogTemplate,
          from: [type: 'REF', value: 'refs/tags/0.0.1'],
          to: [type: 'REF', value: 'master'],
          jira: [issuePattern: 'JENKINS-([0-9]+)\\b', password: 'g7Yz&D@bx7', server: 'https://ebok.atena.pl', username: 'japero1']

          echo changelogContent
      }

    }
  }

}
}
