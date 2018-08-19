#!/bin/bash
check_param_and_publish()
{
    local param=$1

    if [ "$param" != "" ]; then
        echo -e "\n Zipping funciton $param ..."
        rm ../index.zip 
        zip -X -r ../index.zip *
        
        echo -e "\n Publishing ..."
        aws lambda update-function-code --function-name $param --zip-file fileb://../index.zip

        echo -e "\n Finish"

    else
        echo -e "\n error: Function name is required \n"
        return 0
    fi
}

check_param_and_publish "$1"