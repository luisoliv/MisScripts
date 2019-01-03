#!/bin/bash
#these functions show and changes mouse acceleration between 'midly accelerated' & RAW input (good for shooters)

#mouse profiles
mouse_raw () {
    xset m 0/1 30
}

mouse_accel () {
    xset m 2/1 5
}

#show current mouse accel. level
mouse_show () {
    xset q | grep -A 1 Pointer
}
