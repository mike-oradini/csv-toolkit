#!/bin/bash

ENV_NAME="alphashares_env"

echo "🔧 Setting up virtual environment: $ENV_NAME"

if [ -d "$ENV_NAME" ]; then
    echo "✅ Virtual environment '$ENV_NAME' already exists. Activating..."
else
    echo "🚀 Creating a new virtual environment..."
    python3 -m venv $ENV_NAME
fi

# Activate the virtual environment
source $ENV_NAME/bin/activate

echo "🔄 Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

echo "📦 Installing dependencies from requirements.txt..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "⚠️ No requirements.txt found. Skipping package installation."
fi

echo "🎯 Virtual environment setup complete!"
#!/bin/bash
