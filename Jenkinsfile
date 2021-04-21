node {
  // pipeline exercise scm stage
  stage('scm') {
    // obtain GitHub information
    final scmVars = checkout (scm)
    echo "GIT_COMMIT: ${scmVars.GIT_COMMIT}"
    echo "GIT_BRANCH: ${scmVars.GIT_BRANCH}"
    echo "GIT_URL: ${scmVars.GIT_URL}"
    echo "GIT_PREVIOUS_COMMIT: ${scmVars.GIT_PREVIOUS_COMMIT}"
    echo "GIT_PREVIOUS_SUCCESFUL_COMMIT: ${scmVars.GIT_PREVIOUS_SUCCESFUL_COMMIT}"
    echo "GIT_COMMITER_NAME: ${scmVars.GIT_COMMITER_NAME}"
    echo "GIT_COMMIT_MSG: ${scmVars.GIT_COMMIT_MSG}"
    echo "GIT_COMMIT_DESC: ${scmVars.GIT_COMMIT_DESC}"
    
    GIT_COMITTER_NAME = sh (script: 'git log -1 --pretty=%cn ${GIT_COMITTER_NAME}', returnStdout: true).trim()
    echo "GIT_COMITTER_NAME: ${GIT_COMITTER_NAME}"
   
    GIT_COMMIT_MSG = sh (script: 'git log -1 --pretty=%B ${GIT_COMMIT_MSG}', returnStdout: true).trim()
    echo "GIT_COMMIT_MSG: ${GIT_COMMIT_MSG}"

  }
  stage ('build'){
    sh 'docker build -t cursist/python:1 .'
  }
}
