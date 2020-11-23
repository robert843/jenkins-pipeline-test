pipeline {
  agent any
  stages {
    stage('changelog') {
      steps {
        script {
          
          def changelogTemplate = readFile(file: '.jenkins/changelog.tpl')
          def changelogContent = ""
          withCredentials([usernamePassword(credentialsId: 'jira', passwordVariable: 'pass', usernameVariable: 'user')]) {
              // the code in here can access $pass and $user

                changelogContent = gitChangelog returnType: 'STRING', template: changelogTemplate,
                from: [type: 'REF', value: 'refs/tags/0.0.1'],
                to: [type: 'REF', value: 'master'],
                jira: [issuePattern: 'ERGOBAL-([0-9]+)\\b', password: pass, server: 'https://ebok.atena.pl', username: user]
          }    
          echo changelogContent
      }

    }
  }

}
}
