# Installs necessary non-NX/node dependencies for the project on MacOS

DIR=$(dirname "$0")

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then

  echo "
[ERROR] Homebrew is not installed. Please install Homebrew before running this script.

Instructions for installing homebrew can be found here: https://brew.sh/
" > /dev/stderr

  exit 1
fi

# Check if Rust/Cargo is installed, and install if unavailable
if ! command -v cargo &> /dev/null; then
  zsh "$DIR/helpers/cargo.zsh"
else
  echo "[INFO] Cargo already installed — skipping!"
fi

# Check if NVM is installed, and install if unavailable
if ! command -v cargo &> /dev/null; then
  zsh "$DIR/helpers/nvm.zsh"
else
  echo "[INFO] NVM already installed — skipping!"
fi

source .env

# Check if foreman is installed, and install if unavailable
if ! command -v foreman &> /dev/null; then
  zsh "$DIR/helpers/foreman.zsh"
else
  echo "[INFO] Foreman already installed — skipping!"
fi
