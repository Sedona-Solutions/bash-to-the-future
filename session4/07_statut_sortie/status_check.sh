#!/bin/bash
echo "Test d'exécution :"
ls /notfound 2>/dev/null
if [ $? -ne 0 ]; then
  echo "La commande a échoué."
else
  echo "La commande a réussi."
fi