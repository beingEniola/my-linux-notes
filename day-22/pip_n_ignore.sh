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

python -m pip install --upgrade pip

echo "pip upgraded successfully."

if [ -f ".gitignore" ]
then
    echo "Warning: .gitignore already exists. Skipping creation."
else
    cat > .gitignore <<EOF
# Virtual environment
venv/
.venv/

# Python cache
__pycache__/
*.py[cod]

# Distribution files
build/
dist/
*.egg-info/

# Environment variables
.env
EOF
    echo ".gitignore created successfully."
fi