#!/bin/bash

echo [$(date)]: "START"

echo [$(date)]: "Removing existing .egg-info directories"
find . -name "*.egg-info" -exec rm -rf {} +

echo [$(date)]: "Creating env with python 3.8 version"
conda create --prefix ./env python=3.8 -y

echo [$(date)]: "Activating the environment"
source activate ./env

echo [$(date)]: "Installing the dev requirements"
pip install -r requirements_dev.txt

echo [$(date)]: "END"
