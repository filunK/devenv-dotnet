#!/usr/bin/env bash

if [ -f ".devcontainer/.env" ]; then
    exit 0
fi

if [[ -z "${USER+x}" ]]; then
    USER=$(id -un)
    export USER
fi

if [[ -z "${USER_ID+x}" ]]; then
    USER_ID=$(id -u)
    export USER_ID
fi

envsubst <.devcontainer/.env.sample >.devcontainer/.env
