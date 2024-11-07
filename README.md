## Git Clone and Git Submodules management

```bash
# Clone recursively the entire history
git clone --recurse-submodules <repository-url>

# Clone recursively the last commit
git clone --depth 1 --recurse-submodules <repository-url>

# Update submodule (loading all history) equivalent to git pull
git submodule update --remote

# Update submodule (loading last commit) equivalent to git pull
git submodule update --remote --depth 1

git submodule update --init --recursive
```

## Setup

Configure start script

```bash
chmod +x start.sh
```

Execute in terminal (WSL or UNIX Like Distro)

```bash
./start.sh
```
