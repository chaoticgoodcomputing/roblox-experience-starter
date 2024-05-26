# Install NVM for managing Node.js versions.
# 

if [ -x $(brew install nvm) ]; then
  echo "[SUCCESS] NVM installed!"
  exit 0
else
  echo "[ERROR] NVM install failed!" > /dev/stderr
  exit 1
fi
