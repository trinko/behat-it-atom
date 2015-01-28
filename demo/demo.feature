# demo.feature
# language: fr

Fonctionnalité: Avoir une coloration syntaxique pour la langue française dans les fichiers feature
    Afin d'avoir une lisibilié accrue des fichiers features
    En tant que rédacteur de fichier de tests fonctionnels
    Je dois différencié les différents types de mot clés du language Gherkin en français par différentes couleurs

    Contexte:
        Étant donné que je suis dans une fenêtre d'étition d'Atom
        Et que je suis un rédacteur de specs

    Scénario:
        Étant donné que je viens de créer un nouveau fichier feature
        Quand je commence à écrire mes specs en français
        Alors je dois voir la coloration des mots-clés Gherkin en français variée en fonction de leur nature
        Mais pas quand jes les écrirs dans le corps d'une description d'une Fonctionnalité: ou d'un Scénario

    Plan du scénario: Scénario
        Étant donné que je vais utiliser le mot-clé <keyword>
        Quand j'écrirai mes features du type <original_keyword>
        Alors je dois le voir apparaître avec la couleur défini dans le style par le code '<color_code>'

        Exemples:
          | keyword          | original_keyword | color_code                   |
          | Fonctionnalité   | Feature          | entity.name.function.feature |
          | Contexte         | Background       | entity.name.function.feature |
          | Étant donné      | Given            | support.constant.feature     |
          | Afin d[e\']      | In order to      | source.variable.feature      |
