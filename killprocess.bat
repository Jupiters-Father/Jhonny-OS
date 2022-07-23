@echo off
title pskill
:kill
echo ENTER PROCESS YOU WANT TO KILL
set/p "ans=>"
pskill %ans%
:want to exit?
echo DO YOU WANT TO EXIT Y/N lowercase
set/p "ans=>"
if %ans%== y exit
if %ans%== n goto :kill