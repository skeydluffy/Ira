python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install django
pip install -r requirements.txt
pre-commit install
touch ./git/hooks/pre-commit
echo '#!/bin/sh\npre-commit run --all-files\ngit add .' > ./git/hooks/pre-commit
chmod u+x .git/hooks/pre-commit
cp sample_env .env
