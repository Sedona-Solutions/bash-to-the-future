### 🎤 Slide 1 – Structure d’une commande Bash

Bienvenue à cette nouvelle session sur les commandes Bash. Aujourd’hui, on va aller plus loin dans la maîtrise du shell.

Mais avant de taper quoi que ce soit, il faut comprendre comment une commande Bash est structurée. Une commande, c’est comme une phrase : on a un **verbe** (la commande), des **compléments** (les arguments), et parfois un **ton** qu’on lui donne (les options). Par exemple, dans ls -l /home, ls est la commande, -l une option, et /home l’argument.

Ce modèle simple permet pourtant une infinité de combinaisons puissantes.

Côté anecdote, la syntaxe de ces commandes vient tout droit des premiers systèmes Unix dans les années 70. À l’époque, l’espace mémoire coûtait cher, donc les noms de commandes étaient courts : cp, mv, ls, rm… moins on tape, mieux c’était. Aujourd’hui, cette concision fait encore la force de Bash.

### 🎤 Slide 2 – Variables, redirection et pipes

Un shell sans variables, ce serait un peu comme un programme sans mémoire. Les variables permettent de stocker des infos : name="Alice", et ensuite je peux faire echo Hello $name.

On peut aussi rediriger les entrées/sorties : avec >, on envoie la sortie vers un fichier, avec < on lit à partir d’un fichier, et avec | – le fameux **pipe** – on connecte deux commandes.

C’est Ken Thompson, un des créateurs d’Unix, qui a introduit cette idée brillante du pipe dans les années 70. Il a dit un jour : "Quand deux commandes peuvent communiquer, elles deviennent plus puissantes que chacune séparément."

Et c’est toujours vrai aujourd’hui. Regardez : cat file.txt | grep error | sort | uniq – en une ligne, je cherche des erreurs, je trie et je supprime les doublons. C’est presque magique.

### 🎤 Slide 3 – Commandes essentielles (1/2)

Voici un premier ensemble de commandes qu’on utilise **tout le temps** en ligne de commande.

- pwd : pour savoir où on est
- ls : pour lister les fichiers
- cd : pour naviguer
- mkdir et rmdir : pour créer ou supprimer des dossiers
- touch : pour créer un fichier vide
- cp, mv, rm : pour copier, déplacer ou supprimer

Ces commandes ont été parmi les toutes premières de l’environnement Unix dans les années 70, et elles sont encore là, quasiment inchangées.

Le saviez-vous ? La commande ls vient de 'list segments', et elle est dérivée de la commande PDP-11. Le minimalisme de l’époque reste ancré dans nos usages.

### 🎤 Slide 4 – Commandes essentielles (2/2)


- cat : pour afficher le contenu d’un fichier
- less : pour lire un fichier page par page
- head et tail : pour lire le début ou la fin d’un fichier
- grep : pour rechercher du texte
- find : pour rechercher des fichiers
- man : pour afficher le manuel d’une commande

Un fait intéressant : man a été l’un des tout premiers outils de documentation intégrée. Il a permis aux développeurs Unix de partager des infos essentielles dans un format standardisé.

À propos de grep : elle a été créée par Ken Thompson en 1973. Son nom vient d'une commande de l’éditeur **ed** : g/re/p, qui signifiait 'global regular expression print'. Elle est depuis devenue un pilier de l’analyse de logs.

### 🎤 Slide 5 – Commandes combinées et séquences

Bash devient vraiment intéressant quand on combine les commandes. On peut enchaîner plusieurs commandes sur une ligne :

- ; : exécute tout à la suite
- && : exécute la commande suivante **seulement si** la précédente réussit
- || : exécute la suivante **si la précédente échoue**

Par exemple : mkdir test && cd test crée un dossier et y entre seulement si tout s’est bien passé.

Ce mécanisme reflète l'esprit Unix : écrire de petites commandes spécialisées, qu'on peut combiner entre elles pour créer des workflows puissants.

Cette philosophie, c’est ce qu’on appelle le _Unix way_, et elle influence encore aujourd’hui des outils comme Docker ou Kubernetes.

### 🎤 Slide 6 – Globbing et wildcards

Passons à une autre forme de super-pouvoir : le **globbing**, ou l’utilisation de **jokers** pour désigner plusieurs fichiers à la fois.

- \* : tout
- ? : un caractère
- [a-z] : un caractère dans une plage
- {a,b,c} : les variantes explicites

Exemple : cp {janvier,fevrier,mars}.csv archive/ va copier tous les fichiers listés dans archive/.

Le globbing a été inspiré par les expressions régulières, mais a été conçu pour être plus simple à écrire.

C’est une fonctionnalité qui a évolué au fil du temps avec les shells comme sh, puis bash dans les années 80. Aujourd’hui, on ne pourrait pas vivre sans elle dès qu’on manipule beaucoup de fichiers.

### 🎤 Slide 7 – Conclusion et ressources

Pour conclure cette session, retenez que maîtriser Bash, ce n’est pas apprendre des dizaines de commandes par cœur, mais plutôt comprendre leur **logique**, leur **structure**, et surtout comment les **combiner intelligemment**.

C’est ce qui fait qu’un simple terminal devient un environnement de travail ultra puissant.

Et n’oubliez pas, tout ce qu’on a vu aujourd’hui s’appuie sur plus de 50 ans d’histoire de l’informatique.

Voici quelques ressources pour aller plus loin :

- le site explainshell.com
- et bien sûr, man et tldr pour explorer chaque commande.

Merci pour votre attention, et on se retrouve pour la prochaine session sur les scripts Bash !
