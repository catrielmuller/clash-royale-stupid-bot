#!/bin/bash

clear
echo "Clash Royale Stupid Bot"

for (( i=1; i<=200; i++ ))
do
  echo "Start Match $i"
  adb shell input tap 608 1167
  sleep 5
  adb shell input tap 544 1204
  echo "Waiting to start the battle"
  sleep 10
  echo "Start Battle"

  for (( j=1; j<=15; j++ ))
  do
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

  echo "Waiting to end battle screen"
  sleep 5
  adb shell input tap 608 1665
  echo "------------------------------"
  sleep 5
done
