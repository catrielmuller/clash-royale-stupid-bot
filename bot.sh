#!/bin/bash

clear
echo "Clash Royale Stupid Bot"
echo "-----------------------"
echo ""

for (( i=1; i<=200; i++ ))
do
  echo "- Safe Prepare match"
  adb shell input tap 568 1796
  sleep 2
  adb shell input tap 568 1796
  sleep 2
  echo "- Start Match $i"
  adb shell input tap 608 1167
  sleep 5
  adb shell input tap 544 1204
  echo "- Waiting to start the battle"
  sleep 10
  echo "- Start Battle"

  BAR='###############'

  for (( j=1; j<=15; j++ ))
  do
    echo -ne "\r[$j/15] ${BAR:0:$j}"

    adb shell input tap 336 1829
    sleep 1
    adb shell input tap 581 260
    sleep 2

    adb shell input tap 574 1829
    sleep 1
    adb shell input tap 581 260
    sleep 2

    adb shell input tap 748 1829
    sleep 1
    adb shell input tap 581 260
    sleep 2

    adb shell input tap 969 1829
    sleep 1
    adb shell input tap 581 260
    sleep 2
  done

  echo ""
  echo "- Waiting to end battle screen"
  sleep 5
  adb shell input tap 608 1665
  echo ""
  echo ""
  sleep 2
done
