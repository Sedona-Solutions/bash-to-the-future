# 🎤 Session 4 – Bash en coulisses : Processus, entrées et sorties

## Slide 1 – Objectifs – Processus & I/O en Bash

1. **Comprendre ce qu’est un processus et comment le manipuler.**  
   Chaque commande que vous tapez n’est pas juste une ligne qui s’exécute : elle devient un processus dans le système. Comprendre cette mécanique, c’est savoir comment Bash délègue les tâches au noyau Linux.

2. **Maîtriser les flux d’entrée/sortie : stdin, stdout, stderr.**  
   Chaque commande que vous tapez n’est pas juste une ligne qui s’exécute : elle devient un processus dans le système. Comprendre cette mécanique, c’est savoir comment Bash délègue les tâches au noyau Linux.

3. **Savoir rediriger, enchaîner et capturer les flux.**  
   Grâce à `>`, `<`, `|`, `2>`…, vous ne subissez plus les résultats, vous les utilisez. Vous pouvez chaîner, trier, extraire, ignorer… comme un plombier du terminal.

4. **Découvrir des outils avancés pour des scripts robustes.**  
   `tee`, `xargs`, `trap`, `set -e` : des outils simples qui transforment vos scripts de bricoleur en vrais outils industriels. Sans superflu, mais puissants.

## Slide 2 – Un processus, c’est quoi ?

Un processus, c’est une commande… qui prend vie. Chaque fois que vous exécutez une commande, Bash crée un processus enfant, distinct, identifié par un PID.
C’est un peu comme allumer une machine pour une tâche précise : elle a son propre cycle de vie, de la naissance à l’arrêt.
Et comme dirait un scientifique un peu excentrique : attention à ce que vous déclenchez, vous ne savez jamais où ça vous mènera.
Heureusement, ici, pas besoin de convecteur temporel pour revenir en arrière. Il suffit d’un kill."


## Slide 3 – Gérer les processus Bash

Lancer un processus, c’est une chose. Le garder sous contrôle, c’en est une autre.
Avec &, vous le détachez pour continuer à travailler. Avec jobs, fg, bg, vous jonglez entre les tâches.
Et si ça tourne en rond ? Un petit kill, et on n’en parle plus.
Certains processus, comme certaines expériences, sont plus sûrs quand on les surveille de près. Et si vous entendez une alarme en fond sonore… vérifiez vos ps aux."

## Slide 4 – stdin, stdout, stderr

"Dans Bash, tout tourne autour de 3 flux fondamentaux : entrée, sortie, et sortie d’erreur.
Vous posez une question : stdin. Bash vous répond : stdout. Il se plaint : stderr.
Un trio équilibré… en théorie. Dans la pratique, il arrive que stderr parle plus fort que les deux autres.
C’est à ce moment-là qu’on aimerait bien avoir une horloge suspendue pour remonter à la ligne précédente."

## Slide 5 – Rediriger les flux Bash

"Les redirections sont ce qui vous permet de capturer ce qui sort ou ce qui plante.
Avec >, >>, 2> ou <, vous déviez le flux pour l’enregistrer ou l’ignorer.
Vous pouvez même envoyer stderr droit dans /dev/null.
C’est un peu comme si vous effaciez les erreurs du passé sans conséquences… mais sans paradoxe temporel. Bash, lui, ne modifie pas la timeline. Il l’écrit dans un fichier log."

## Slide 6 – Chaîner des commandes avec `|`

"Avec les pipes |, Bash devient modulaire. Vous prenez la sortie d’une commande, vous la branchez dans l’entrée d’une autre.
Une commande filtre, l’autre trie, une troisième analyse. En une ligne, vous faites enchaîner les idées plus vite que le skate de Marty dans Hill Valley.
Mais rappelez-vous : plus il y a d’étapes, plus il faut anticiper les dérapages. Même en ligne droite, un grep mal positionné peut faire louper la sortie."

## Slide 7 – Statut de sortie & logique conditionnelle

"Chaque commande vous laisse un message discret : son code de sortie, stocké dans $?.
Un 0 signifie succès. Tout le reste… annonce un problème.
Avec && et ||, vous automatisez les réactions : ‘Si c’est bon, continue. Sinon, change de plan.’
C’est le moment où Bash se transforme en machine à scénarios. Et croyez-moi, c’est plus fiable qu’un flux de 1.21 gigawatts

## Slide 8 – Gérer les erreurs intelligemment

"Les erreurs ne sont pas vos ennemies. Ce sont… des avertissements.
Avec 2>, &>, ou même une redirection vers /dev/null, vous apprenez à écouter ou à ignorer ce qui mérite attention.
Et si vous êtes un peu plus rigoureux : loguez tout, filtrez avec tail, et alertez au bon moment.
Ce n’est pas du voyage dans le temps, mais c’est de l’anticipation. Et parfois, c’est tout aussi efficace."

## Slide 9 – Outils puissants en Bash

"Ici, on passe à l’étage supérieur.
tee : pour voir et archiver.
xargs : pour transformer une liste en actions.
trap : pour garder le contrôle, même en cas d’interruption.
Et set -e, parce que parfois, il vaut mieux que tout s’arrête à la première erreur plutôt que de finir dans un futur incertain."

## Slide 10 – Récapitulatif

"Bravo, vous avez vu ce que peu de gens prennent le temps d’explorer : les fondations invisibles de Bash.
Les processus, les flux, les signaux, les statuts… tout ce qui se passe entre deux lignes de commande.
Rappelez-vous : chaque commande est un déclencheur, chaque redirection une décision, et chaque script… une machine bien réglée.
Continuez d’explorer, mais comme toujours… évitez les boucles infinies, sauf si vous avez une DeLorean à portée de main."

