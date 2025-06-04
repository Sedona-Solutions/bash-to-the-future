#!/bin/bash
sleep 5 &
PID=$!
echo "Processus $PID lancé"
sleep 1
echo "kill $PID lancé"
kill $PID
echo "Processus $PID terminé"