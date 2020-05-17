pipeline {
    agent {
        docker {
            image "qaninja/rubywd" 
        }
    }
    
    stages{
        stage('Build') {
            steps{
             echo "Iniciando"
             sh 'rm -f Gemfile.lock'
             sh "bundle install" 
            }
        }

        stage("Teste") {
            steps{
                echo "Iniciando os testes"
                sh "cucumber -p ci"
                cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1
            }
        }
        stage("UAT") {
            steps{
                echo "Uat"
                input(message: 'Produção?', ok:'Yes')
            }
        }
        
        stage("prod") {
            steps{
                echo "est"
            }
        }
       
    }
}