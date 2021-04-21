node {
  // pipeline exercise scm stage
  stage('scm') {
    // obtain GitHub information
    final scmVars = checkout (scm)
    echo "GIT_COMMIT: ${scmVars.GIT_COMMIT}"
    echo "GIT_COMMIT: ${scmVars.GIT_BRANCH}"
    echo "GIT_COMMIT: ${scmVars.GIT_URL}"
    echo "GIT_COMMIT: ${scmVars.GIT_PREVIOUS_COMMIT}"
    echo "GIT_COMMIT: ${scmVars.GIT_PREVIOUS_SUCCESFUL_COMMIT}"
    echo "GIT_COMMIT: ${scmVars.GIT_COMMITER_NAME}"
    echo "GIT_COMMIT: ${scmVars.GIT_COMMIT_MSG}"
    echo "GIT_COMMIT: ${scmVars.GIT_COMMIT_DESC}"
  }
}
