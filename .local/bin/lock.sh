#!/bin/bash

# slightly modified version of Lokesh Krishna's lockscreen script:
# https://github.com/lokesh-krishna/dotfiles/blob/main/nord-v2/bin/lock.sh

i3lock \
  --nofork \
  --ignore-empty-password \
  \
  --indicator \
  --bar-indicator \
  --bar-pos="1190" \
  --bar-base-width="10" \
  --bar-orientation=horizontal \
  --bar-color=2e3440 \
  --ringver-color=88c0d0 \
  --ringwrong-color=bf616a \
  --bshl-color=5e81ac \
  --keyhl-color=a3be8c \
  \
  --clock \
  --time-color=eceff4ff \
  --time-str="%H:%M" \
  --time-font="Calvin and Hobbes" \
  --time-size=150 \
  --time-pos="1675:995" \
  --time-color=2e3440ff \
  \
  --date-color=d8dee9ff \
  --date-str="%A, %d %B" \
  --date-color=2e3440ff \
  --date-font="Calvin and Hobbes" \
  --date-size=95 \
  --date-pos="tx:1140" \
  --date-pos="1500:1140" \
  \
  --verif-font="Calvin and Hobbes" \
  --verif-size=150 \
  --verif-text="Verifying..." \
  \
  --wrong-font="Calvin and Hobbes" \
  --wrong-size=150 \
  --wrong-text="Skibidi" \
  --image=$HOME/Pictures/wallpapers/calvin-and-hobbes.png
