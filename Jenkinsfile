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
             sh "bundle install" 
            }
        }

        stage("Teste") {
            steps{
                echo "Iniciando os testes"
                sh "cucumber -p ci"
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