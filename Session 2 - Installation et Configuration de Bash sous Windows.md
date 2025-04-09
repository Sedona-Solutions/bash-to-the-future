## Slide 1 : Introduction

_"Bonjour à tous et bienvenue dans cette deuxième session de notre formation sur Bash sous Windows ! Aujourd’hui, nous allons voir comment installer et configurer Bash avec WSL2 pour un environnement de développement optimal."_

_"Dans la session précédente, nous avons découvert ce qu’est Bash et pourquoi il est incontournable. Maintenant, place à la pratique ! Nous allons :_

✅ **Installer WSL2 et une distribution Linux**

✅ **Configurer et personnaliser Bash**

✅ **Apprendre à naviguer entre Windows et Linux**

_"Nous ferons cela ensemble avec une démonstration en direct, alors préparez vos terminaux !"_

## 🛠 Slide 2 : Pourquoi installer Bash sous Windows ?

_"Avant d’entrer dans l’installation, petit rappel pourquoi_ _WSL est une solution incontournable :_

✅ Exécuter des **commandes Linux directement sous Windows**, sans machine virtuelle.

✅ Développer **dans un environnement Linux** tout en restant sous Windows.

✅ **Interopérabilité totale** entre les outils Windows et Linux.

✅ **Gains de performances** par rapport aux anciennes solutions comme Cygwin ou une VM classique."

## ⚙️ Slide 3 : Installation de WSL2 en 3 étapes

_"Passons à l’installation ! Ouvrez_ **_PowerShell en mode administrateur_** _et suivez-moi."_

1️⃣ **Activer WSL et installer une distribution Linux**

wsl --install -d Ubuntu

_"Cette commande installe WSL2 et Ubuntu automatiquement."_

2️⃣ **Mettre à jour WSL pour s’assurer d’avoir la dernière version**

wsl --update

3️⃣ **Vérifier que WSL2 est bien activé et voir la liste des distributions installées**

wsl -l -v

🚀 **Et voilà, Bash sous Windows est installé et prêt à l’emploi !**

## 📂 Slide 4 : Lancer Bash sous Windows

📌 **Trois façons de lancer Bash :**

✅ **Depuis PowerShell ou CMD :**

wsl

✅ **Depuis le menu Démarrer :** chercher “Ubuntu” et le lancer.

✅ **Depuis Windows Terminal :** ajouter un profil WSL pour un accès rapide.

_"Testons ensemble en tapant une première commande pour voir si tout fonctionne :"_

echo "Hello Bash !"

"Si vous voyez le message s’afficher, félicitations, Bash fonctionne !"

## 🔄 Slide 5 : Accéder aux fichiers Windows et Linux

📂 **Accéder aux fichiers Windows depuis Bash :**

cd /mnt/c/Users

ls

📂 **Accéder aux fichiers Linux depuis Windows :**

- Ouvrir **l’Explorateur de fichiers Windows** et taper dans la barre d’adresse :

\\\\wsl$\\Ubuntu\\home\\user

"Grâce à cette interopérabilité, vous pouvez modifier un fichier sous Linux avec un éditeur Windows et inversement."

📂 **Copier un fichier de Windows vers Linux**

cp /mnt/c/Users/NomUtilisateur/Documents/fichier.txt ~/fichier.txt

## ⚙️ Slide 6 : Personnaliser Bash

_"Bash peut être personnalisé pour optimiser votre productivité. Par exemple, nous allons créer un_ **_alias_** _pour éviter d’écrire ls -la_ _à chaque fois :"_

**1\. Ajouter un alias pour raccourcir les commandes (via .bashrc)**

echo "alias ll='ls -la'" >> ~/.bashrc

source ~/.bashrc

"Maintenant, taper ll fera exactement la même chose que ls -la !"

📌 **2\. Modifier l’invite de commande sans toucher à .bashrc** **(via export)**

export PS1="\\u@\\h:\\w$$ "

export PS1="\\! : \\u@\\h:\\w$ "

👉 **Cela affiche nom_utilisateur@nom_machine:chemin_actuel$** **dans le terminal, sans modifier de fichier.**

👉 **Attention : cette modification disparaît après la fermeture du terminal !**

📌 **3\. Créer une fonction Bash pour automatiser une tâche**

function gohome {

cd ~

echo "Vous êtes maintenant dans votre dossier personnel : $HOME"

}

👉 **Taper gohome** **vous ramènera automatiquement dans votre répertoire home** **et affichera un message de confirmation.**

🔥 **Grâce à ces personnalisations, vous optimisez votre flux de travail sous Bash !** 🚀

## 🛠 Slide 7 : Comprendre les Gestionnaires de Paquets sous Linux

📌 **Qu’est-ce qu’un gestionnaire de paquets ?**

Un gestionnaire de paquets est un outil permettant d’**installer, mettre à jour et supprimer des logiciels** sous Linux. Il facilite la gestion des dépendances et assure la stabilité du système.

🔹 **APT (Advanced Package Tool) – Debian & Ubuntu**

✅ Utilisé sur **Ubuntu, Debian et dérivés (Linux Mint, Pop!\_OS…)**

✅ Commandes principales :

sudo apt update  # Met à jour la liste des paquets disponibles

sudo apt upgrade # Met à jour les paquets installés

sudo apt install nom_du_paquet  # Installe un logiciel

sudo apt remove nom_du_paquet  # Supprime un logiciel

🔹 **DNF/YUM – Fedora, CentOS, RHEL**

✅ Utilisé sur **Fedora, CentOS, Red Hat Enterprise Linux (RHEL)**

✅ Commandes principales :

sudo dnf install nom_du_paquet  # Installe un logiciel

sudo dnf remove nom_du_paquet  # Supprime un logiciel

sudo dnf update  # Met à jour tous les paquets

👉 **YUM est l’ancien gestionnaire sur CentOS/RHEL, remplacé par DNF.**

🔹 **Pacman – Arch Linux et Manjaro**

✅ Utilisé sur **Arch Linux, Manjaro**

✅ Commandes principales :

sudo pacman -S nom_du_paquet  # Installe un logiciel

sudo pacman -R nom_du_paquet  # Supprime un logiciel

sudo pacman -Syu  # Met à jour tous les paquets

🔹 **Zypper – openSUSE**

✅ Utilisé sur openSUSE

✅ Commandes principales :

sudo zypper install nom_du_paquet  # Installe un logiciel

sudo zypper remove nom_du_paquet  # Supprime un logiciel

sudo zypper update  # Met à jour tous les paquets

## 🔄 Slide 8 : Exécution croisée entre Windows et Linux

_"WSL permet aussi d’exécuter des commandes Windows depuis Linux et inversement !"_

📌 **Ouvrir Notepad depuis Bash :**

notepad.exe test.txt

📌 **Ouvrir l’Explorateur Windows depuis Bash :**

explorer.exe .

📌 **Exécuter un script Bash depuis PowerShell :**

wsl -e bash -c "echo Hello depuis Bash $WSL_DISTRO_NAME !"

"Grâce à cette interopérabilité, vous pouvez automatiser vos tâches et utiliser le meilleur des deux mondes !"

## 📢 Slide 9 : Résumé et conclusion

_"Aujourd’hui, nous avons vu comment :_

✅ **Installer WSL2 et une distribution Linux**

✅ **Configurer et personnaliser Bash**

✅ **Gérer les fichiers entre Windows et Linux**

✅ **Les gestionnaires de paquets**

✅ **Exécuter des commandes entre Windows et Linux**

📌 **Prochaine session : Maîtriser les commandes de base Bash et comprendre leur fonctionnement !**

📢 **Des questions ? Des points à approfondir ?**

<br/><br/><br/><br/>
