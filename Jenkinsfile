node {
    def app

    stage('Clone repo') {
        sh 'docker login -u AWS -p eyJwYXlsb2FkIjoiSGJYd2toZHdtM29yczBzU1hta0lTNW53b2dGc2l5alp4WGpVU3p5Qll0Q2FaNmd2bWxBczQvVGUwUkpyNjAwNUE5dDNidTYxUmJyYXFpOTJDUkNPaEpoYjk1d2hJaXRNa0ROS0hNdDVBbkV6b203QWtWSzNINWNVRGlENmh0eWIrcFlzMk1PVnc1WUlieU1lZ1RUUGUyTUs2YlpoTVFnWW1LQmluc1dFbmNodTNCVUJlWFNLazBVbEI1NkV3YVo1RzB1Y0t1dUMyUENOYmVEYkJGWlNGaU5MRW5JOUpSdGw3aTZNY1diS0lhSHRnc01tOFZFaGMxTCtDQlVMNVlTSFBPYnltYjcvZ1l2dFkwR3NCd1lIN2VuNkxkbWZRdmdCSlNBMW4wd2o3bEoyY3J4TVBBVXpDcHdFTFRxdFVMQVgrckFmQjZSdUtHVTF6a2dvK1Fwdml6M3RoYlkzakFyaUFtMEp2K2V2UGx2WVJUT3RWMXpEK01RSEpSakdIdC9tV01RNEEzeW5BWGtXck44aWltcU4yTklFc3ZhZlJkdW9wSnQxNk83T0s4R004UmFvbFV5RWZsUVJyTEtIQVRSSUhCQnorVWRzaEx5ZzJMQ20xVS9RV2xPT0c5N3lWc2hiN1IrNDE1M3g3RW9XZmFTT0NpeCtNd2cxT280ejZOQ1c4cG1rdUNPRWlMSEVMRTkyUTQwdGhKQzFic3NEMGJKci9rUlJLMnYyNU9xQ2ozRjlTMGxmcmpuRXhhbU9ZSm45MHgwY3N4eVRVUXVwZDNVb0JLVUNMUGN2UUtyM09ENU5kTmFqTlNVNzdsRXNsRlcxQWM4MFQvREVoMEFNMCsyZlFGMEFSSXZFdEhtc3YzM2JlMzZvdHhtV2lZSlBxTGU5NE1FMzRLYktINXpmWVJTRVhZVlUrL3Y3YkRubzdaTVNrSmRWYWdRRUkxOGk3TWxMR0dQU0VEeFFINDFleHhIUzhEM3ArN2Y3VW1jblJpYXlRNDU2T2MrTDBlU0p2WVV3QnpvWVlPRzBqRE4rQmNPT0hOTklXR0JmcGh2N3BqdDFXNzRyaVFDSmkrdlpONllzODErZnQ3dEJzRC9rQXBPY3l5ZzJYcE1odW51REoxNllmSEJ6WEFKWFpkVkxpMldxVmFQNnVZSkNxc0hRWEhITEhMOGhkVE5GdzAyWEhGUGtYUGdaTklVN21tYk01YWc0d2wyYVNvOExRWUYyYUNOTkNqSWZZbnJqejcxVVVMSVpPZTRFdU9rZWlBa3RyNUpjODFHc3RTd1A4Z1JyMDNSanFoLzdGT1VvTStWbXNHVjhENmwvS1N1bU95YkgrMXZoTVV2anN5OXZxYzhUL1N4OXgrRlQ5WGw3SlJQc2tOWWp0UXFpV1k1NHZOajROejkxTi9CUUJsTzFmdWxJa21POGg1aldTYnZ2RHlXcXhpM3dtVm89IiwiZGF0YWtleSI6IkFRRUJBSGh3bTBZYUlTSmVSdEptNW4xRzZ1cWVla1h1b1hYUGU1VUZjZTlScTgvMTR3QUFBSDR3ZkFZSktvWklodmNOQVFjR29HOHdiUUlCQURCb0Jna3Foa2lHOXcwQkJ3RXdIZ1lKWUlaSUFXVURCQUV1TUJFRURQZFpmWDM1MHNndEMxQUhuQUlCRUlBN3NyVStUWG9ESFB0VWhHUzk2QURoYnFLZDVlbElSRGI2V0xXbE83QTU0dmc2a09DcU1lYzR6VWJSRCtDeCtyem1XMjNyQ01neDVPb1JoUTA9IiwidmVyc2lvbiI6IjIiLCJ0eXBlIjoiREFUQV9LRVkiLCJleHBpcmF0aW9uIjoxNTIzMjM2MzkyfQ== https://445579089480.dkr.ecr.us-east-1.amazonaws.com'
        sh 'cd; rm -rf .dockercfg; rm -rf .docker; rm -rf .docker'
        sh 'cd $JENKINS_HOME; rm -rf .dockercfg; rm -rf .docker; rm -rf .docker'
        sh 'cd; ls -alt | grep docker'
        sh 'cd $JENKINS_HOME; ls -alt | grep docker'
        checkout scm
    }

    stage('Build image') {
        app = docker.build("mastermind")
    }

    stage('Run unit tests') {
        app.inside {
            sh 'mvn test'
        }
    }
}