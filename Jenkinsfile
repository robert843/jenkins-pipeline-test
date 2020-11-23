pipeline {
    agent any
    stages {
        stage('changelog') {
            steps {
                script {
                    def changelogContext = gitChangelog returnType: 'CONTEXT',
                            from: [type: 'REF', value: '285a334'],
                            to: [type: 'REF', value: 'master'],
                            jira: [issuePattern: 'JENKINS-([0-9]+)\\b', password: '', server: '', username: '']

                    Set<String> issueIdentifiers = new TreeSet<>()
                    changelogContext.issues.each { issue ->
                        if (issue.name == 'Jira') {
                            issueIdentifiers.add(issue.issue)
                        }
                    }
                    currentBuild.description = "http://jira.com/issues/?jql=key%20in%20%28${issueIdentifiers.join(',')}%29"
                }

            }
        }
    }
}
