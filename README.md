# dotvm
.Net version manager

# Install:

```
curl https://raw.githubusercontent.com/daher13/dotvm/refs/heads/main/install.sh | bash
```

# Usage example:

```
dotvm install 9.0.203 # install version 9.0.203 
dotvm set 9.0.203 # set current version to 9.0.203 
dotvm list # list installed versions
dotvm remove 9.0.203 # remove version 9.0.203 
```

# Uninstall

Remove your **.local/share/dotvm** folder and the lines on your **.bashrc** that set the path:
```
DOTVM_PATH="$HOME/.local/share/dotvm"
if [ -d "$DOTVM_PATH" ]; then
    export PATH="$DOTVM_PATH/dotnet-sdk:$DOTVM_PATH/bin:$PATH"
fi
```
