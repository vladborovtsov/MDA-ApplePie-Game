#!/bin/bash

#https://github.com/dbystruev/Apple-Pie/raw/master/Apple%20Pie/Assets.xcassets/Tree%200.imageset/Tree%200.pdf
#https://raw.githubusercontent.com/dbystruev/Apple-Pie/master/Apple%20Pie/Assets.xcassets/Tree%200.imageset/Tree%200.pdf

for each in `seq 0 7` ; do

curl -o Tree0$each.pdf https://raw.githubusercontent.com/dbystruev/Apple-Pie/master/Apple%20Pie/Assets.xcassets/Tree%20$each.imageset/Tree%20$each.pdf

done
