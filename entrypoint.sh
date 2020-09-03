#!/bin/sh -l

echo INIT

token="$INPUT_TOKEN"
context="$INPUT_CONTEXT"
url="$INPUT_URL"
command_string='$INPUT_COMMAND_STRING'

echo START

echo "CMD STR $command_string"
echo "CMD STR INPUT $INPUT_COMMAND_STRING"

echo POST STR

command_to_execute="rancher --debug kubectl $INPUT_COMMAND_STRING"

echo "CMD EXEC $command_to_execute"

rancher login --token $token --context $context $url

echo POST LOGIN

eval $command_to_execute

echo POST EVAL
