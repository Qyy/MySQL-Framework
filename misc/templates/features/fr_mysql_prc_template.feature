# language: fr
Fonctionnalité: Procédure prc_
  Afin de 
  Je souhaite 

  Contexte: La base "db_foo" de notre serveur de base de donnée
    Soit un serveur MySQL dont l'hôte est "foo-host.local"
    Et que je me connecte avec l'utilisateur "root"
    Et que je me connecte avec le mot de passe "root"
    Et que j'utilise la base de données "db_foo"

  Plan du Scénario: Utilisation de la procédure avec de bonnes valeurs d'entrées
    Soit la procédure prc_
    Et que j'entre <chaine> comme premier paramètre
    Lorsque j'appelle la procédure prc_
    Alors <chaine> devrait être égale à <sortie_chaine>

    Exemples:
      | chaine   | sortie_chaine |
      | "chaine" | "resultat"    |
