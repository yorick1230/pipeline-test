node {
  // pipeline exercise scm stage
  stage('Scm') {
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
  /*
  stage ('Build'){
    sh 'docker build -t cursist/python:1 .'
  }
  
  
  docker.image('cursist/python:1').inside {
    stage('Test') {
      sh 'pytest --junitxml=reports/results.xml'
      junit 'reports/*.xml' // after this, test results are shown in jenkins
      sh 'coverage run test_app.py'
      sh 'coverage xml -o coverage-reports/coverage-.xml'
      cobertura coberturaReportFile: 'coverage-reports/coverage-.xml'
    }
  }
  
  stage('SonarQube') {
    def scannerHome = tool 'scanner';
    withSonarQubeEnv('SonarQube') {
      sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=flask-alpine -Dsonar.sources=."
    }

  */
  stage ('Tag') {
    echo 'Tag!'
  }
        
  stage ('Push') {
    echo 'Push!'
    
  }
    
  stage('Deploy') {
    //sh "sed 's#127.0.0.1:30400/flask-alpine:version#192.168.99.101/cursist/python:1#' deployment.yaml | kubectl apply -n default -f -"
     //sh "docker pull localhost:5000/cursist/python:1"
    sh "export DOCKER_TLS_VERIFY='1'"
    sh "export DOCKER_HOST='tcp://192.168.99.101:2376'"
    sh "export DOCKER_CERT_PATH='C:/Users/jeroendw/.minikube/certs'"
    sh "export MINIKUBE_EXISTING_DOCKER_TLS_VERIFY='1'"
    sh "export MINIKUBE_EXISTING_DOCKER_HOST='tcp://192.168.99.100:2376'" 
    sh "export MINIKUBE_EXISTING_DOCKER_CERT_PATH='C:/Users/jeroendw/.docker/machine/machines/default'"
    sh "export MINIKUBE_ACTIVE_DOCKERD='minikube'"
    sh "kubectl apply --kubeconfig=config -n default -f deployment.yaml"
  }
  
}
