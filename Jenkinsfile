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
  }
}
