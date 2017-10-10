node {
  try {
    stage('checkout') {
      echo "TODO:  Checkout mobile-lib master branch"
    }
    stage('prepare') {
      sh "git clean -fdx"
    }
    stage('build') {
      sh "chmod 755 ./scripts/make_and_deploy_cocoapod.sh"
    }
  } finally {
    stage('cleanup') {
      echo "doing some cleanup..."
    }
  }
}
