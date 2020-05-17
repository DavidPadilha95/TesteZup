pipeline {
    agent any
    
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