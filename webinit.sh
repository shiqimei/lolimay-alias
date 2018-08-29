#!/bin/bash

mkdir $1 && cd $1
cp /media/lolimay/Code/Web/Template/init/. . -r
node build/initialize.js
cnpm install