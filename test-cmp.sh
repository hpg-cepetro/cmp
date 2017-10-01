#!/bin/bash

data=simple-syntetic-micro.su
prog=./cmp
cmin="1.98e-7"
cmax="1.77e-6"
cnum="101"
aph="600"
dt="0.002"
cdp0=100
cdp1=300

time $prog $cmin $cmax $cnum $aph $dt $data $cdp0 $cdp1
