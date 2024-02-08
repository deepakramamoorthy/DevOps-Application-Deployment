#!/bin/bash

if [  "dev" -eq "dev" ]
then
        echo "push to dev repo"
       
       docker tag newimage:latest deepakramamoorthy/reactapplicationdev:2.0
       docker push deepakramamoorthy/reactapplicationdev:2.0
       
        
else
        echo "push to prod repo"
        
	docker tag newimage:latest deepakramamoorthy/reactapplicationdev:2.0
	docker push deepakramamoorthy/reactapplicationdev:2.0
fi
