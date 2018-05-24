@echo off
echo removing existing folders
rd /s /q "src\app\api-ts\api"
rd /s /q "src\app\api-ts\model"

echo "regenerating files"
java -jar swagger-codegen-cli-2.2.1.jar generate ^
-i ..\st-heroku-backend\api-spec\src\main\resources\external.json ^
-l typescript-angular ^
-o src/app/api-ts ^
--api-package api ^
--model-package model ^
--invoker-package invoker 
    