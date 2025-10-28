#!/bin/bash 

# Create and set up a virtual environment for Transformers 

  

# Path to the virtual environment 

VENV_PATH=~/venv_transformers 

  

echo "Creating virtual environment in $VENV_PATH..." 

python3 -m venv $VENV_PATH 

  

echo "Activating the environment..." 

source $VENV_PATH/bin/activate 

  

echo "Upgrading pip..." 

pip install --upgrade pip 

  

echo "Installing required packages..." 

pip install torch transformers datasets scikit-learn pandas 

  

echo "Installing ipykernel and registering the kernel..." 

pip install ipykernel 

python -m ipykernel install --user --name=venv_transformers --display-name "Python (venv_transformers)" 

  

echo "Done! The virtual environment 'venv_transformers' is ready." 