node {
    stage('downloading')  {  	
        git branch: 'master', url: 'https://github.com/solbarre/ansible_apache.git'
    }
	stage('ansible') {
	    sh 'ansible-playbook -i hosts.yml playbook.yml'
	}

}