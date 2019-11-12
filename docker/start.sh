#!bin/bash
if [ $# -eq 0 ]
then
    echo "odoo coder-server is starting";
    docker-compose -f docker-compose.yml up;
elif [ $# -eq 1 ]
then 
    if [ $1 == "down" ]
    then
    	echo "odoo coder-server is downing";
    	docker-compose -f docker-compose.yml down;
    elif [ $1 == "build" ]
    then
	echo "odoo coder-server is building";
	docker build -f Dockerfile -t odoo13_code_server:1.0 .;
    else
	echo "参数错误";
    fi
else
    echo "参数错误";
fi
