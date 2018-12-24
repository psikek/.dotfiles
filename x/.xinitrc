#!/bin/sh
#XINITRC FILE :^)

xrdb $HOME/.Xresources
exec i3 
xset b off # turns off the bell
urxvtd
#fonts
xset +fp $HOME/.local/share/fonts
xset fp rehash
