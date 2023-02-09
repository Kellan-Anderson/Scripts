#!/bin/bash

# Script to help manage python virtual enviroments

STATUS_INVALID_USE=1

if [[ $# == 0 ]]; then
    v_status=`. .venv/bin/activate`
    if [[ $? != 0 ]]; then
        echo "No virtual enviroment found, would you like to make one? [y/n]"
        read answer
        if [[ $answer == "y" ]] || [[ $answer == "yes" ]]; then
            python3 -m venv .venv
        elif [[ $answer != "n" ]] && [[ $answer != "no" ]]; then
            echo "Unrecoknized answer"
            exit $STATUS_INVALID_USE
        fi
    fi
fi
