echo "Pulling Changes from github..."
git pull
echo "Installing Requirements..."
pip install --quiet -U -r requirements.txt
python3 -m bot
