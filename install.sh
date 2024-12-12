#!/usr/bin/env bash

listConfigs(){
    configs=()
    for dir in $(ls $(dirname $0)); do
        if [ -d ${dir} ]; then
            configs+=("${dir}")
        fi
    done
    echo "${configs[@]}"
}

copyConfigs(){
    configs=(${@})
    for config in ${configs[@]}; do
        if [ ${config} == "zsh" ]; then 
            echo "copying $config to $HOME/"
            if [ ! -e "$HOME/.zshrc" ]; then
                cp "${config}/.zshrc" "$HOME/"
            else
                echo ".zshrc file already exists! Remove it and try again. Skipping..."
            fi
        else 
            echo "copying $config to $HOME/.config/"
            if [ ! -e "$HOME/.config/${config}" ]; then
                mkdir "$HOME/.config/${config}"
                cp -r "${config}" "$HOME/.config/"
            else
                echo "${config} directory exists! Remove it to install correctly. Skipping..."
            fi
        fi
    done
    echo "Done copying..."
}

configsToInstall=${*}
if [ -z "${configsToInstall[*]}" ]; then
    echo "You can install these available configs:" $(listConfigs)
    echo "Simply run './install.sh [config name]'"
    echo "Or run './install.sh all' to install all at once"
else
    if [ "$1" == "all" ]; then
        copyConfigs "$(listConfigs)"
    else
        copyConfigs "${configsToInstall[*]}"
    fi
fi
