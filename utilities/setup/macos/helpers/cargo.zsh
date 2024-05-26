# Installs the Rust package manager, Cargo.
#
# Mirrors https://doc.rust-lang.org/cargo/getting-started/installation.html

# Try to install rust, echoing success if successful or an error if not
if [ -x $(curl https://sh.rustup.rs -sSf | zsh) ]; then
  echo "[SUCCESS] Rust installed!"
  exit 0
else
  echo "[ERROR] Rust install failed!" > /dev/stderr
  exit 1
fi
