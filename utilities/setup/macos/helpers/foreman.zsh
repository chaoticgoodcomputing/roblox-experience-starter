# Installs Foreman for roblox project dependencies.
#
# Installed from Foreman repo: https://github.com/Roblox/foreman

echo "[INFO] Installing Foreman for Roblox project dependencies..."
if [-x $(cargo install foreman)]; then
  echo "export PATH=\$HOME/.foreman/bin:\$PATH" >> ~/.zprofile
  echo "[SUCCESS] Foreman installed!"
  exit 0
else
  echo "[ERROR] Foreman install failed!" > /dev/stderr
  exit 1
fi
