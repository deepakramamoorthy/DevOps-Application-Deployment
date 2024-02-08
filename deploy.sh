#!/bin/bash
branchName = sh(label: 'getBranchName', returnStdout: true, script: 'git rev-parse --abbrev-ref HEAD').trim()
println branchName
if [  "$branchName" -eq "dev" ]
then
        echo "push to dev repo"
       
       docker tag newimage:latest deepakramamoorthy/reactapplicationdev:2.0
       docker push deepakramamoorthy/reactapplicationdev:2.0
       
        
else
        echo "push to prod repo"
        
	docker tag newimage:latest deepakramamoorthy/reactapplicationdev:2.0
	docker push deepakramamoorthy/reactapplicationdev:2.0
fi
