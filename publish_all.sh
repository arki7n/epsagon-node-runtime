#!/bin/sh

deploy_folder() {
    cd $1;
    rm -f layer.zip &&
        ./build.sh &&
        ./publish.sh;
    result=$?;
    cd ..;
    return $result;
}

for folder in v15.2.0; do
    deploy_folder $folder || (echo "version publish failed" && exit 1);
done;