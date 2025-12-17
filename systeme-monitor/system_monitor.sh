#!/bin/bash


echo "=== SYSTÈME MONITOR ==="
echo "Date : $(date)"
echo ""


echo "--- Informations système ---"
echo "Uptime : $(uptime -p)"
echo "Noyau : $(uname -r)"
echo ""


echo "--- Mémoire ---"
free -h
echo ""


echo "--- Top 5 processus CPU ---"
ps aux --sort=-%cpu | head -6
echo ""


echo "--- Top 5 processus Mémoire ---"
ps aux --sort=-%mem | head -6
echo ""


echo "--- Utilisateurs connectés ---"
w
echo ""


echo "--- Charge système (load average) ---"
uptime | awk -F'load average:' '{print $2}'