ZSH_AUTOSUGGESTIONS_DIR="$ZSH_CUSTOM/plugins/zsh-autosuggestions"

if [ ! -d "$ZSH_AUTOSUGGESTIONS_DIR" ]; then
	echo "zsh-autosuggestions isn't installed yet"
	git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTOSUGGESTIONS_DIR
fi
