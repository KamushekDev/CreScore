#!/bin/bash
set -e
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
trap 'status_code=$?; end_command=$last_command; if [[ $status_code != 0 ]]; then echo "\"${end_command}\" command filed with exit code $status_code."; fi' EXIT

nugets=$(find . -type f -name "*.nupkg")
# echo "$nugets"
echo "build version: $BUILD_VERSION"
# workflow wouldn't contain old nugets
for nuget in $nugets
do
    echo nuget
    dotnet nuget push $nuget --api-key $GITHUB_TOKEN --source "github"
    # dotnet publish -c Release /p:Version=$BUILD_VERSION $solution
done