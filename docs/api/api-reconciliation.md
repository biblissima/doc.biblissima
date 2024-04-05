Biblissima+ met à disposition un **service de réconciliation de données**. Il vise à faciliter l’alignement avec les [référentiels d’autorité Biblissima](data.biblissima.fr), pour plusieurs types d’entités (cotes, personnes, organisations, lieux, descripteurs iconographiques, œuvres...). 

Il est conforme à la version 0.1 de l’API de réconciliation (voir la [documentation de la version 0.1](https://www.w3.org/community/reports/reconciliation/CG-FINAL-specs-0.1-20230321/)), actuellement [en cours de standardisation au W3C](https://reconciliation-api.github.io/specs/draft/), et peut être branché sur le logiciel [OpenRefine](https://openrefine.org/) (voir la section [Réconcilier ses données avec OpenRefine](/api/openrefine)).

La réconciliation est le processus qui consiste à **faire correspondre un jeu de données avec celui d'une source externe**. Cela peut servir à harmoniser les différentes graphies d'un même nom (nom propre, libellé de descripteur, cote de manuscrit, etc.), et à relier des données sources à un jeu de données cible susceptible de fournir des informations supplémentaires sur une entité donnée (coordonnées géographiques, dates de naissance et de mort, références bibliographiques, liens et identifiants externes...). 

Ce processus est **semi-automatisé**. L’algorithme compare les données et renvoie des propositions, mais l’utilisateur est maître du choix final : choix d’une proposition plutôt qu’une autre, voire rejet de toutes les propositions.

## Pourquoi réconcilier ses données avec Biblissima ?

Les équipes et projets recevant un financement de Biblissima+ sont **fortement encouragés à aligner leurs données avec les référentiels d’autorité de Biblissima+** afin d’alimenter la plateforme [data.biblissima.fr](data.biblissima.fr) et, le cas échéant, de faciliter le travail de traitement et d’agrégation de leurs données (voir le [Vademecum Biblissima+](/vademecum-biblissima)).

La **qualité des données** du portail Biblissima et de leur mise en interopérabilité dépend directement de ce travail de réconciliation et d'enrichissement des référentiels.

Ces référentiels sont organisés par types d’entités (cotes de manuscrits , personnes et organisations, lieux, descripteurs iconographiques, œuvres ou textes, bientôt entrées lexicales). 

Ils jouent un rôle central dans la **présentation unifiée au sein du portail** de toutes les informations concernant une même entité dans les différentes sources agrégées. Par exemple, une même page du portail consacrée à l’entité personne “François Rabelais” rassemble des informations biographiques provenant d’un dictionnaire d’auteurs datant du XVIe siècle, récapitule l’ensemble des graphies et pseudonymes utilisés pour y faire référence (“Rabelais, François, “Francesco Rabelais” ou “Alcofribas Nasier”) et liste les oeuvres dont il est l’auteur.
