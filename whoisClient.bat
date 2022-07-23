@echo off
title WHOIS
echo ENTER URL OR IP U WANT TO LEARN ABOUT
set/p "ans=>"
whois %ans%
pause >nul