#!/bin/bash

echo '''
remove Lock = Caps_Lock
remove control = Control_L
keysym Control_L = Caps_Lock
keysym Caps_Lock = Control_L
add lock = Caps_Lock
add control = Control_L
'''  >> ~/.Xmodmap

xmodmap ~/.Xmodmap
