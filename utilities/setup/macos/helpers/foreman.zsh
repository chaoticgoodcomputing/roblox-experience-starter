# Installs Foreman for roblox project dependencies.
#
# Install from Foreman repo: https://github.com/Roblox/foreman

echo "[INFO] Installing Foreman for Roblox project dependencies..."
if [-x $(cargo install foreman)]; then
  echo "[SUCCESS] Foreman installed!"
  exit 0
else
  echo "[ERROR] Foreman install failed!" > /dev/stderr
  exit 1
fi
