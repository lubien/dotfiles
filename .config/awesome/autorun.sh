# Setup Xorg a little bit after awesomewm starts

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
    echo "runned"
fi

# My PC has monitor issues :P
if [ $(hostname) = "joestar" ]
then
    ./monitor.sh
else
    # I like to touch-click
    xinput set-prop 10 275 1
fi
