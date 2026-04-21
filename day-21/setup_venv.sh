#!/bin/bash

set -e

if [ -d "venv" ] 
then
    echo "Virtual environment exists."
else
    python3 -m venv venv
    echo "Virtual environment created successfully."
fi

source venv/bin/activate

echo "Virtual environment activated."