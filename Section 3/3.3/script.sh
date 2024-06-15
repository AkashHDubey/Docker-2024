#!/bin/sh

github_repo=$1
docker_repo=$2
github_link="https://github.com/$github_repo.git"

git clone $github_link

new_dir=$(echo $github_repo | sed 's:.*/::')

cd $new_dir

docker build . -t $docker_repo
docker push $docker_repo