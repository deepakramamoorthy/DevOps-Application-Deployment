#!/bin/bash
branchName = sh(label: 'getBranchName', returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
               echo branchName
               
        if (branchName == "dev") {
                    echo "push to dev repo"
   
       docker login -u deepakramamoorthy -p Dee9578461426@@@ 
       docker tag newimage:latest deepakramamoorthy/reactapplicationdev:3.0
       docker push deepakramamoorthy/reactapplicationdev:3.0
       
        } 
	else
	{
             echo "push to prod repo"
   
	docker tag newimage:latest deepakramamoorthy/reactapplicationdev:3.0
	docker push deepakramamoorthy/reactapplicationdev:3.0
	}
