#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [[ -f ~/.extend.xinitrc ]];then
  . ~/.extend.xinitrc
else
  DEFAULT_SESSION=awesome
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

get_session(){
  local dbus_args=(--sh-syntax --exit-with-session)
  case $1 in
    awesome) dbus_args+=(awesome) ;;
    bspwm) dbus_args+=(bspwm-session) ;;
    budgie) dbus_args+=(budgie-desktop) ;;
    cinnamon) dbus_args+=(cinnamon-session) ;;
    deepin) dbus_args+=(startdde) ;;
    enlightenment) dbus_args+=(enlightenment_start) ;;
    fluxbox) dbus_args+=(startfluxbox) ;;
    gnome) dbus_args+=(gnome-session) ;;
    i3|i3wm) dbus_args+=(i3 --shmlog-size 0) ;;
    jwm) dbus_args+=(jwm) ;;
    kde) dbus_args+=(startkde) ;;
    lxde) dbus_args+=(startlxde) ;;
    lxqt) dbus_args+=(lxqt-session) ;;
    mate) dbus_args+=(mate-session) ;;
    xfce) dbus_args+=(xfce4-session) ;;
    openbox) dbus_args+=(openbox-session) ;;
    *) dbus_args+=($DEFAULT_SESSION) ;;
  esac

  echo "dbus-launch ${dbus_args[*]}"
}

exec $(get_session)
# exec awesome

# twm &
# xclock -geometry 50x50-1+1 &
# xterm -geometry 80x50+494+51 &
# xterm -geometry 80x20+494-0 &
#exec xterm -geometry 80x66+0+0 -name login
