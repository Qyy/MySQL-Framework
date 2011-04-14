# language: fr
Fonctionnalité: Procédure prc_xml_entities_encode
  Afin de pouvoir insérer une chaine dans un document XML
  Je souhaite convertir les caractères réservés du XML en entités XML

  Contexte: La base "db_foo" de notre serveur de base de donnée
    Soit un serveur MySQL dont l'hôte est "foo-host.local"
    Et que je me connecte avec l'utilisateur "root"
    Et que je me connecte avec le mot de passe "root"
    Et que j'utilise la base de données "db_foo"

  Plan du Scénario: Utilisation de la procédure avec de bonnes valeurs d'entrées
    Soit la procédure prc_xml_entities_encode
    Et que j'entre <chaine> comme premier paramètre
    Lorsque j'appelle la procédure prc_xml_entities_encode
    Alors <chaine> devrait être égale à <sortie_chaine>

    Exemples:
      | chaine      | sortie_chaine              |
      | "Ben & Joe" | "Ben &amp; Joe"            |
      | "<&>"       | "&lt;&amp;&gt;"            |
      | "Bonjour"   | "&quot;Bonjour&quot;"      |
      | "\"<&>\""   | "&quot;&lt;&amp;&gt;&quot; |