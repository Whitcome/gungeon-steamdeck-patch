#!/bin/bash

cd 'EtG_Data/Managed/'

# Backup Assembly-CSharp.dll
cp Assembly-CSharp.dll Assembly-CSharp.dll.bak

# Title Screen
printf '\xCC' | dd of=Assembly-CSharp.dll count=1 bs=1 conv=notrunc seek=1782428

# Game Camera
printf '\xCC' | dd of=Assembly-CSharp.dll count=1 bs=1 conv=notrunc seek=4016058