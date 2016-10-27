BASE16_SHELL="$HOME/.config/oceanic-next-shell/oceanic-next.dark.sh" 
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export TERM=xterm-256color

export NVM_DIR="/home/$USER/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

DEFAULT_USER=`whoami`

# Add ~/bin to path
export PATH="$HOME/bin:$PATH"
# Use colors in Visionmedia's debbuger
# See: https://github.com/visionmedia/debug/blob/master/node.js#L45
export DEBUG_COLORS=1

# Haskell
export PATH="$HOME/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin:$PATH"