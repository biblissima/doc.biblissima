---
hide:
  - navigation
---

# Vademecum Biblissima : comment contribuer à l’infrastructure de données numériques ?

Ce vademecum a pour but de décrire les **conditions et modalités d'intégration et de mise à jour des données** dans l’infrastructure numérique de Biblissima+.

Il s’adresse avant tout :

- aux [équipes fondatrices](https://projet.biblissima.fr/fr/communaute/equipes-fondatrices) de l’ÉquipEx+ Biblissima+ en charge de la réalisation de ses différents livrables ;
- aux projets souhaitant répondre aux appels à manifestation d'intérêt (AMI) lancés chaque année par Biblissima+, afin de les aider à construire leur candidature ;
- aux équipes des projets exploratoires et projets partenariaux [sélectionnés à la suite d'un AMI](https://projet.biblissima.fr/fr/appels-projets/projets-retenus), pour connaître les modalités d'intégration des données produites dans l'écosystème Biblissima+.

Ce guide s’applique donc à toutes les données et jeux de données produits dans le cadre des activités de recherche menées par les différentes équipes et ayant vocation à intégrer l’infrastructure numérique de Biblissima+. Cette infrastructure prend essentiellement la forme d’un portail d’accès unifié ([Portail Biblissima](https://portail.biblissima.fr)) et d’une plateforme de référentiels d’autorité
([data.biblissima.fr](https://data.biblissima.fr)), s’inscrivant dans le périmètre P1 géré par l’équipe Portail et décrit dans le _Plan de gestion des données de l'observatoire des cultures écrites Biblissima+_ ([10.5281/zenodo.7081673](https://doi.org/10.5281/zenodo.7081673)). 

Ainsi le présent guide explique comment les producteurs de données agissant dans le cadre des périmètres P2 (livrables des équipes partenaires de l’ÉquipEx) et P3 (résultats des projets partenariaux) contribuent à l’enrichissement de l’infrastructure de données de Biblissima+.

## Présentation de l’infrastructure de données

L’infrastructure de données de Biblissima+ s’appuie sur **deux grandes briques**, présentées brièvement ci-dessous :

- le **Portail Biblissima** : [https://portail.biblissima.fr](https://portail.biblissima.fr)
- les **référentiels d’autorité** : [https://data.biblissima.fr](https://data.biblissima.fr) 

Les données susceptibles d’intégrer ces deux plateformes peuvent provenir de ressources très diverses, parmi lesquelles : des bibliothèques numériques, des catalogues et répertoires, des bases de données scientifiques, des corpus spécialisés, des éditions électroniques de sources anciennes, ou encore des thesauri et listes d’autorité.

La page [Ressources](https://projet.biblissima.fr/fr/ressources/ressources-biblissima) du site de Biblissima+ donne une vue d’ensemble des ressources produites et maintenues par les équipes partenaires de Biblissima 1 (2012-2021) et Biblissima+ (2021-2029). [Cette autre page](https://portail.biblissima.fr/fr/dev-log) présente les principales évolutions du Portail depuis sa mise en ligne en avril 2017, en particulier les différentes ressources qui ont été traitées et intégrées par l’équipe au fil du temps.


## Comment s’aligner avec les référentiels Biblissima ? Comment y contribuer ?

Les équipes et projets partenaires de Biblissima+ sont **fortement encouragés à contribuer à l’enrichissement et à l’amélioration des référentiels** publiés sur la plateforme [data.biblissima.fr](https://data.biblissima.fr). En effet, la qualité du travail d’agrégation et de mise en interopérabilité des données au sein du Portail Biblissima est étroitement liée à celle des référentiels, de leur utilisation et de leur enrichissement par les équipes financées.

Le mode opératoire pour contribuer aux référentiels peut être résumé ainsi :

1. en amont le partenaire **aligne ses données** avec le ou les référentiels pertinents : cotes, personnes, organisations, lieux, oeuvres ou descripteurs iconographiques.

    - cette opération peut se faire soit au fil de l’eau (au cours du travail de saisie ou de balisage), soit a posteriori à partir d’un export (alignement par lots) ;
    - pour faciliter les alignements, Biblissima+ propose un service de réconciliation documenté (se référer aux [pages de documentation](../api/api-reconciliation) mises à disposition, et notamment à la section [réconcilier avec OpenRefine](../api/openrefine)).

2. une fois identifiées les entités absentes du référentiel, le partenaire peut :

    - soit transmettre à l’équipe Portail un ou plusieurs fichiers (de préférence au format CSV) pour intégration des entités dans la plateforme data.biblissima.fr ;
    - soit créer lui-même les entités concernées dans la plateforme, manuellement ou par versement par lots automatisé (via _OpenRefine_ ou un script ad hoc).

<a id="integrer-identifiants"></a>
!!! warning "Important"

    Quel que soit le mode opératoire (manuel ou automatisé / au fil de l’eau ou a posteriori), **il est fortement recommandé d’intégrer les identifiants Biblissima des entités dans les données à la source**, que ce soit dans une base de données, une édition de source en XML-TEI ou une notice catalographique en XML-EAD. Ce reversement des identifiants du référentiel Biblissima permettra de faciliter les mises à jour ultérieures du jeu de données.

    Quelques exemples de bases ayant intégré les identifiants Biblissima :

    - Bibliothèques françoises (programme « Bibliothèques Virtuelles Humanistes », CESR) : exemple d'intégration [dans les notices web](https://bibfr.bvh.univ-tours.fr/bibfr/personne/bvhbibfr_02512) et [dans les données structurées](https://bibfr.bvh.univ-tours.fr/bibfr/personne/bvhbibfr_02512/xml) (XML-TEI) ;
    - Bibale (IRHT-CNRS) : exemple d'intégration [dans les notices web](https://bibale.irht.cnrs.fr/5887).

La plateforme data.biblissima.fr dispose des fonctionnalités nécessaires pour permettre des contributions extérieures, soit au fil de l’eau soit par versement en lots. 

Les dispositifs suivants sont disponibles pour contribuer aux référentiels :

- l’interface web de la plateforme [data.biblissima.fr](https://data.biblissima.fr), via le compte utilisateur qui aura été créé pour le partenaire ;
- le logiciel client _[OpenRefine](https://openrefine.org/)_, qui dispose d'un module permettant de verser des items par lot dans la plateforme à l'aide d'une interface graphique ;
- des programmes informatiques ad hoc pouvant s’appuyer sur les API de la plateforme pour aligner, rechercher, créer, éditer, supprimer des items (cf. [page API](https://data.biblissima.fr/w/Project:API)). Ces APIs peuvent par exemple être implémentées dans des modules d’applications web (formulaire de saisie de base de données) ou des plateformes d’édition de sources en XML développées au sein des équipes partenaires de Biblissima+.
- des modèles de fichiers CSV (téléchargeables ci-dessous) pour structurer les données à verser dans data.biblissima, accompagnés d'explications sur les colonnes disponibles.

### Modèles de fichiers CSV pour data.biblissima

!!! note "Modèles CSV pour verser des données dans les référentiels Biblissima data.biblissima"

    - Cotes : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_cotes.csv){:download="biblissima_fichier_type_cotes.csv"} :octicons-download-16:
    - Personnes : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_personnes.csv){:download="biblissima_fichier_type_personnes.csv"} :octicons-download-16:
    - Organisations : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_organisations.csv){:download="biblissima_fichier_type_organisations.csv"} :octicons-download-16:
    - Lieux : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_lieux.csv){:download="biblissima_fichier_type_lieux.csv"} :octicons-download-16:
    - Œuvres : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_oeuvres.csv){:download="biblissima_fichier_type_oeuvres.csv"} :octicons-download-16:
    - Bibliographie : [Télécharger](assets/csv_fichiers_type/biblissima_fichier_type_bibliographie.csv){:download="biblissima_fichier_type_bibliographie.csv"} :octicons-download-16:

    NB : Le caractère séparateur utilisé dans ces fichiers est le signe dollar `$`.

    En complément, un document explicite les labels utilisés dans les fichiers modèles : [Télécharger le document explicatif](assets/csv_fichiers_type/explications_labels.csv){:download="explications_labels.csv"} :octicons-download-16: 

    Pour chaque label est indiquée la propriété correspondante dans les référentiels Biblissima (à ne pas confondre avec les propriétés de Wikidata). Afin de trouver des exemples relatifs à chaque propriété, il suffit de cliquer sur l’onglet “Pages liées” dans le menu latéral gauche du site data.biblissima.

    **[Télécharger l'ensemble des fichiers](assets/csv_fichiers_type/biblissima_fichiers_type.zip){:download="biblissima_fichiers_type.zip"}** (zip) :octicons-download-16:


## Comment fournir les données ?

### Protocoles et modes de partage des données

**Pour le Portail Biblissima :**

L’équipe Portail Biblissima+ prend en charge les modes d’exposition et de partage des données suivants :

|             | Spécification                        | Exemple  |
| ----------- | ------------------------------------ | -------- |
| Entrepôt OAI-PMH | [OAI-PMH 2.0](https://www.openarchives.org/OAI/openarchivesprotocol.html) | [Heidelberg](https://digi.ub.uni-heidelberg.de/cgi-bin/digioai.cgi?verb=Identify) ; [NuBIS](https://nubis.univ-paris1.fr/oai?verb=Identify) |
| Point d’accès IIIF API Change Discovery | [IIIF Change Discovery API](https://iiif.io/api/discovery) | [Bodleian Libraries](https://iiif.bodleian.ox.ac.uk/iiif/activity/all-changes) |
| Point d’accès Collections IIIF | IIIF Presentation API [2.1](https://iiif.io/api/presentation/2.1/#collection) ou [3.0](https://iiif.io/api/presentation/3.0/#51-collection) | [Durham University](https://iiif.durham.ac.uk/manifests/trifle/collection/index) |
| Entrepôt RDF avec point d’accès SPARQL | [SPARQL 1.1 Query Language](https://www.w3.org/TR/sparql11-query/) | [data.bnf.fr](https://data.bnf.fr/sparql/) |
| Dépôt d’un jeu de données dans un entrepôt fournissant un identifiant pérenne (ex. DOI) | | [Sigilla](https://zenodo.org/records/17348540) (Zenodo)|
| Autre API Web (JSON ou XML) | [Activity Streams](https://www.w3.org/TR/activitystreams-core/) ; [DTS](https://distributed-text-services.github.io/specifications/) ; [Hydra](https://www.hydra-cg.com) ; [Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/current/rest-apis.html) | |
| Export dynamique au format pivot Biblissima | [Format pivot Biblissima](portail/format-pivot-biblissima.md) | |

!!! attention "Important"

    L’équipe Portail Biblissima+ ne pourra engager du temps dans le traitement d’un jeu de données seulement si celui-ci est mis à disposition selon un des modes listés ci-dessus.

    D’autres méthodes ou protocoles pourront éventuellement être pris en charge à condition qu’ils permettent à l'équipe de récupérer les données de façon autonome et automatisable.

    Pour toute question veuillez contacter l'équipe Portail à l'adresse _team(at)biblissima-condorcet.fr_.

**Pour les référentiels d’autorité (data.biblissima) :**

Les équipes et projets recevant un financement de Biblissima+ sont fortement encouragés à aligner les données produites vers les référentiels d’autorité et à alimenter la plateforme data.biblissima.fr.

Les modalités de contribution aux référentiels Biblissima sont présentées dans la section [Comment s’aligner avec les référentiels Biblissima ? Comment y contribuer ?](#comment-saligner-avec-les-referentiels-biblissima-comment-y-contribuer).

### Rôles et responsabilités

**Le partenaire :**

- définit, extrait et organise en amont son jeu de données ;
- détermine le niveau d'accès souhaité en conformité avec le principe _"aussi ouvert que possible, pas plus fermé que nécessaire"_ auquel tous les jeux de données produits dans le cadre de Biblissima+ sont soumis ;
- traduit ce niveau d'accès dans une licence de diffusion et de réutilisation fournie avec les données (cette licence doit permettre à l'équipe de savoir si elle peut mettre à disposition les jeux de données enrichis par son intermédiaire) ;
- dépose les jeux de données dans un entrepôt dédié au partage et à l'archivage de données (type Zenodo ou Nakala ou recherche.data.gouv) ;
- choisit le protocole ou mode de partage des données qui lui semble le plus adapté (cf. liste ci-dessus) ;
- fournit la documentation nécessaire à la compréhension des données(description dans un fichier README, fichier LICENCE, modèles ou schémas de structuration, règles de saisie ou de balisage etc.).

**L’équipe Portail Biblissima+ :**

- échange avec le partenaire pour l’assister dans ses choix, répondre aux questions relatives à l’accès, à l’implémentation des protocoles, au choix des formats etc. ;
- développe et maintient les scripts de collecte des jeux de données, d’extraction des métadonnées pertinentes pour Biblissima+, et de transformation pour leur intégration dans le Portail ;
- analyse, traite et intègre les données dans l’infrastructure Biblissima+ de façon autonome.

!!! attention "Important"

    Pour les projets candidats ou lauréats d’un appel à manifestation d'intérêt :

    - il est fortement recommandé de lire le présent vademecum dès la phase de candidature et d'écrire à l’adresse [info-aap@biblissima-condorcet.fr](mailto:info-aap@biblissima-condorcet.fr) pour toute question concernant les dispositions du vademecum ou d'obtenir un avis sur des choix techniques précis.

### Intégration des données par l'équipe Portail

Le calendrier d'intégration par l'équipe Portail sera établi en prenant en compte les points suivants :

- [ ] le partenaire fournit le jeu de données via un protocole permettant la récupération de ses mises à jour de façon automatisée et autonome par l’équipe Biblissima+ (point d’accès API, entrepôt OAI-PMH, triplestore, export XML dynamique au format pivot Biblissima) ;
- [ ] le partenaire peut fournir ses données directement via des exports conformes au format XML pivot Biblissima ;
- [ ] l'alignement des données avec les référentiels Biblissima et, le cas échéant, leur enrichissement, ont été réalisés avant la mise à disposition du jeu de données ;
- [ ] les identifiants Biblissima des entités alignées ont été reversés dans les données produites par le partenaire à la source (fichiers XML, base de données relationnelles etc.) ;
- [ ] la documentation accompagnant les données est suffisamment précise et complète pour permettre à l’équipe Biblissima de les comprendre et de faire le mapping vers le [format pivot Biblissima](portail/format-pivot-biblissima.md) (en particulier si les données sont structurées selon un modèle ou schéma conçu spécialement pour le projet) ;
- [ ] une licence de diffusion et de réutilisation des données est explicitement mentionnée ;
- [ ] pour les jeux de données déposées dans un entrepôt : respect des exigences minimales de gestion des données et de préparation des dépôts (cf. [Plan de gestion de données v1.08](https://doi.org/10.5281/zenodo.7081674), p. 19), et autant que possible respect des pratiques individuelles recommandées (cf. [Plan de gestion de données v1.08](https://doi.org/10.5281/zenodo.7081674), p. 21-22) ;
- [ ] pour les bibliothèques numériques IIIF : respect des [recommandations détaillées ci-dessous](#recommandations-pour-les-bibliotheques-numeriques-iiif) ;
- [ ] le cas échéant, le site web de publication des données dispose d’URL citables et stables, idéalement s’appuyant sur un système d’identifiants pérennes.


## Comment modéliser les jeux de données à intégrer ?

### Détail et richesse des informations fournies

Le degré d'intégration d’un jeu de données au sein du Portail Biblissima dépend directement de la richesse des informations fournies par le partenaire et de leur correspondance avec le **[format pivot Biblissima](portail/format-pivot-biblissima.md)** utilisé pour rendre les données interopérables au sein du Portail.

Les tableaux ci-dessous renseignent **à titre indicatif** quelques types d’informations actuellement traités lors de l’intégration d’un jeu de données dans le Portail. Plus l'information est riche et correctement structurée dans les données fournies, plus des liens pourront être créés avec les ressources existantes, ce qui augmentera la visibilité du jeu de données et favorisera des exploitations croisées avec d'autres sources au sein du Portail.

!!! info

    Le Portail Biblissima est évolutif. Le format pivot utilisé pour y intégrer les données peut être adapté pour refléter les spécificités d’un jeu de données, notamment pour prendre en charge un nouveau type de document, de nouveaux types d’entités ou de nouveaux champs de métadonnées. De même l'équipe Portail pourra ajuster en conséquence l'affichage des données sur les pages web.

**Document (manuscrit ou imprimé) :**

|                          Type d'élément                              |                Exemple               |
| -------------------------------------------------------------------- | ------------------------------------ |
| Type(s) de document                                                  | `manuscrit` |
| Établissement de conservation                                        | `Paris. Bibliothèque Mazarine` |
| Cote                                                                 | `Ms 592` |
| Date de production ou d’édition                                      | `1425-1450` |
| Intervenant(s) (personne et/ou collectivité associée au document) | `Augustin (saint, 0354-0430)` ; `Jean d'Aussy (14..-1453)` |
| Rôle des intervenants vis-à-vis du document                          | `Auteur du texte` ; `Copiste` |
| Langue du document                                                   | `latin`  |
| Lieu d’origine ou de publication du document                         | `France` |
| Oeuvres présentes dans le document, associées à leur(s) auteur(s)    | `Augustin (saint, 0354-0430) : La cité de Dieu` |
| Présentation du contenu du document                                  | |
| Identifiant de la ressource sur le site d’origine                    | `3116` |
| URL stable de la notice                                              | `http://www.calames.abes.fr/pub/ms/MAZA12275` |
| URL stable de la numérisation du document si disponible              | `https://mazarinum.bibliotheque-mazarine.fr/idurl/1/3116`
| URL stable du Manifest IIIF (1) si disponible         | `https://mazarinum.bibliotheque-mazarine.fr/iiif/3116/manifest` |

!!! info ""

    **(1)** Un "Manifeste" représente l'unité de distribution élémentaire dans l’univers de IIIF. Il prend la forme d'un fichier au format JSON qui contient les métadonnées nécessaires à la présentation et au partage d’un objet numérisé. Pour une explication plus détaillée, voir la page [Introduction à IIIF](iiif/introduction-iiif.md#api-presentation).

**Oeuvre :**

|                Type d'élément                     |                Exemple                          |
| ------------------------------------------------- | ----------------------------------------------- |
| Titre de l'oeuvre                                 | `Éthique à Nicomaque` |
| Auteur                                            | `Aristote (0384-0322 av. J.-C.)` |
| Langue                                            | `grec` |
| Identifiant de la ressource sur le site d’origine | `6280` |
| URL stable de la ressource sur le site d’origine  | `https://pinakes.irht.cnrs.fr/notices/oeuvre/6280/` |

**Texte :**

|                Type d'élément                     |                Exemple                          |
| ------------------------------------------------- | ----------------------------------------------- |
| Titre du texte                                    | `Ethica Nicomachea` |
| Auteur                                            | `Aristote (0384-0322 av. J.-C.)` |
| Traducteur                                        | `Robert Grosseteste (1175?-1253)`
| Langue                                            | `latin`

**Intervenant (personne physique ou morale) :**

|                Type d'élément                     |                Exemple                          |
| ------------------------------------------------- | ------------------------------------------------|
| Nom                                               | `François Rabelais` |
| Genre                                             | `masculin` |
| Date de naissance ou date de fondation            | `1494` |
| Date de mort ou date de fin d’activité            | `1553` |
| Lieu de résidence ou localisation                 |  |
| Identifiant de la ressource sur le site d’origine | `bvhbibfr_01681` |
| URL stable de la ressource sur le site d’origine  | `https://bibfr.bvh.univ-tours.fr/bibfr/personne/bvhbibfr_01681` |

**Lieu :**

|                Type d'élément                      |                Exemple                          |
| -------------------------------------------------- | ------------------------------------------------|
| Libellé                                            | `Saint-Benoît-sur-Loire` |
| Pays                                               | `France` |
| Latitude                                           | `47.80561` |
| Longitude                                          | `2.31274` |
| Identifiant de la ressource dans le site d’origine | |
| URL stable de la ressource sur le site d’origine   | |

### Formats et schémas supportés

Actuellement l’équipe Biblissima+ prend en charge les formats et schémas de métadonnées suivants :

- [XML Pivot Biblissima](portail/format-pivot-biblissima.md)
- MARC-XML
- XML-EAD
- XML-TEI
- MODS ou METS-MODS
- Dublin Core (OAI-PMH)
- Manifeste IIIF (JSON-LD)
- CSV, en particulier pour contribuer à data.biblissima (voir la section [Comment s’aligner avec les référentiels Biblissima ? Comment y contribuer ?](./\#comment-saligner-avec-les-referentiels-biblissima-comment-y-contribuer) et les modèles de fichiers CSV associés).


!!! warning "Important"

    D’autres schémas et modèles pourront éventuellement être pris en charge à condition qu’ils soient reconnus comme standards ou solidement documentés.

    Pour les bases de données relationnelles avec des structures complexes, les exports SQL ou dans un format tabulaire sont déconseillés. Ainsi l’équipe Biblissima+ ne pourra pas garantir leur intégration dans le Portail. Il est recommandé de mettre à disposition des exports dans un des formats listés ci-dessus et de les fournir selon un des modes présentés dans la section précédente [Comment fournir les données ?](#comment-fournir-les-donnees). 

    Pour toute demande veuillez contacter l'équipe Portail à l'adresse _team(at)biblissima-condorcet.fr_.


### Recommandations pour les bibliothèques numériques IIIF

#### Lien entre une notice descriptive et un Manifeste IIIF

Les bibliothèques numériques IIIF interrogeables dans Biblissima sont majoritairement moissonnées via le protocole OAI-PMH. Or la plupart des entrepôts OAI-PMH repérés à ce jour omettent l'URL du Manifeste IIIF dans les enregistrements (_Records_). Celle-ci est cependant un élément clé pour offrir un accès direct à la source numérisée dans le Portail Biblissima et dans IIIF-Collections.

L'ajout de cette information dans les métadonnées des enregistrements OAI permet de pallier ce manque de manière très simple.

!!! important "Recommandations"

    - inclure l’URL du Manifeste IIIF dans un champ de métadonnées adéquat, à déterminer selon le schéma de métadonnées adopté (par exemple `dc:HasFormat` pour Dublin Core ; `mods:url` pour MODS, avec un attribut permettant de la distinguer des autres URL). L’idée est de pouvoir isoler facilement l’URL du Manifeste au moment de la collecte des métadonnées, quelle que soit la procédure employée pour cette opération (moissonnage d’un entrepôt OAI-PMH, de fichiers XML-TEI via un entrepôt de données etc.) ;

    - ou, à défaut, faire en sorte qu’il y ait une correspondance possible entre l’identifiant de l’enregistrement ou de la notice (par exemple l’identifiant OAI) et l’URL du Manifeste IIIF, et donc qu’il soit possible de construire la seconde à partir du premier.

#### Exposition des ressources IIIF via l’API IIIF Change Discovery

L’implémentation de [l’API IIIF Change Discovery](https://iiif.io/api/discovery) pour partager les ressources IIIF d’une bibliothèque numérique est encouragée (en remplacement ou en complément du protocole OAI-PMH). Cela faciliterait le moissonnage en masse de ces ressources et permettrait de fluidifier la récupération de leurs mises à jour.

!!! important "Recommandation"

    - chaque `object` listé dans le flux d’activités exposé par l’API devrait pointer via la propriété `seeAlso` sur un fichier de métadonnées structurées (un fichier TEI, EAD, RDF-XML etc.). Voir l'exemple dans [https://iiif.io/api/discovery/1.0/#object](https://iiif.io/api/discovery/1.0/#object) ;

    - si possible, implémenter a minima le [Level 1](https://iiif.io/api/discovery/1.0/#level-1-basic-change-list) de l’API afin de pouvoir opérer un moissonnage ciblé uniquement sur les ressources mises à jour depuis telle date (dans l’API IIIF Change Discovery, il n'est possible de cibler les ressources qui ont été modifiées depuis la date du dernier moissonnage qu'à partir du "level 1").

    Exemple d'API Change Discovery (Oxford, Bodleian Libraries) : [https://iiif.bodleian.ox.ac.uk/iiif/activity/all-changes](https://iiif.bodleian.ox.ac.uk/iiif/activity/all-changes)

#### Métadonnées embarquées ou référencées dans les Manifestes

Il est fortement recommandé d’inclure un maximum de métadonnées descriptives au sein des Manifestes IIIF. Même lorsque des métadonnées riches sont accessibles par un autre moyen, par exemple via un entrepôt OAI-PMH, avoir un maximum d’informations dans le Manifeste lui-même a toujours une utilité : il permet de rendre l’objet numérisé compréhensible à un utilisateur quel que soit l’environnement dans lequel il le visualise (une plateforme de transcription, un outil d’annotation, ou n’importe quel visualiseur d’images IIIF…). Ainsi les métadonnées peuvent “voyager” avec l’objet, indépendamment du contexte. En l’absence d’entrepôt OAI-PMH ou tout autre point d’accès aux métadonnées, l’équipe Biblissima+ pourra, à défaut, récupérer celles encapsulées directement dans les Manifestes.

Une méthode complémentaire est de référencer les métadonnées source via la propriété `seeAlso` du Manifeste ([https://iiif.io/api/presentation/3.0/#seealso](https://iiif.io/api/presentation/3.0/#seealso)). Cela permet de récupérer et d’indexer les métadonnées nécessaires à Biblissima+ dans un format structuré et exploitable informatiquement (XML, RDF etc.).

!!! important "Recommandations"

    - inclure un maximum de métadonnées descriptives de l’objet dans les propriétés idoines de l’API Présentation de IIIF, en particulier dans `metadata` ([https://iiif.io/api/presentation/3.0/#metadata](https://iiif.io/api/presentation/3.0/#metadata)) ;

    - pointer via la propriété `seeAlso` vers un fichier de métadonnées structurées, dans l’idéal conforme à un standard reconnu (Dublin Core, TEI, EAD, MODS etc.). Voir [_IIIF Cookbook - Linking to Structured Metadata_](https://iiif.io/api/cookbook/recipe/0053-seeAlso/) ;

    - indiquer une licence et des informations d’attribution dans les propriétés prévues à cet effet par l’API Présentation de IIIF. Voir [_IIIF Cookbook - Rights statement_](https://iiif.io/api/cookbook/recipe/0008-rights/).
    

#### Pré-requis techniques du serveur IIIF

!!! important "Recommandations"

    - les Manifestes et les images IIIF doivent être accessibles en HTTPS ;

    - le serveur doit être paramétré pour inclure [l’entête CORS](https://developer.mozilla.org/fr/docs/Web/HTTP/CORS) dans toutes les réponses aux requêtes de Manifestes JSON (API Présentation) et de fichiers info.json (API Image). Pour plus de détails, voir [https://iiif.io/api/annex/notes/apache/#enabling-cors](https://iiif.io/api/annex/notes/apache/#enabling-cors) et [https://enable-cors.org/server.html](https://enable-cors.org/server.html).
    

### Préconisations pour la transmission et la mise à jour des données : document de synthèse

Un document de synthèse est mis à disposition des équipes partenaires afin de leur permettre de définir au mieux les **modalités de transmission**, et surtout de **mise à jour**, de leurs jeux de données.

Ce document comprend :

-  **Pour contribuer au Portail Biblissima** : différents profils de transmission définis par un ensemble de critères relatifs à la nature et à la qualité des données, à des aspects organisationnels, aux modalités de mise à disposition des données et de signalement et de récupération des mises à jour.

    Les niveaux restent bien sûr indicatifs : un projet peut se trouver à cheval sur plusieurs d'entre eux, ou valider un niveau donné tout en cochant des critères des niveaux supérieurs.
    Le niveau 4 correspond au scénario recommandé et jugé idéal. 

- **Pour contribuer aux référentiels Biblissima** : une échelle de profondeur de l'interopérabilité des données transmises. Plus un jeu de donnée comprend des données préalignées avec les référentiels Biblissima, plus il est considéré comme interopérable.

Le niveau et/ou la profondeur d'interopérabilité d'un jeu de données conditionnent la facilité et la rapidité de son intégration par l’équipe Portail.

En offrant une vision d'ensemble sur les modes de transmission et de mise à jour possibles des données, ce document vise également à aider les partenaires à se situer et à identifier les améliorations possibles dans les processus de transmission de données qu'ils ont mis ou vont mettre en place.

!!! info ""

    Préconisations pour la transmission et la mise à jour des données (PDF) : [**Télécharger le document**](assets/transmission_donnees/preconisations_transmission_donnees.pdf){:download="preconisations_transmission_donnees.pdf"} :octicons-download-16:

Pour échanger sur les spécificités de votre jeu de données et obtenir un appui pour définir les meilleurs processus possibles de transmission et de mise à jour de vos données, veuillez contacter l'équipe Portail à l'adresse _team(at)biblissima-condorcet.fr_.

### Recommandations pour les éditions électroniques de sources

Le Portail Biblissima peut interagir avec les éditions électroniques principalement par l'intermédiaire des **entités nommées qui auront été préalablement balisées au sein du corpus édité**. Le Portail n’a pas vocation à intégrer le texte intégral des éditions électroniques créées par les partenaires. Il permet cependant des liens croisés à partir des entités nommées (noms de personnes ou d'organisations, noms de lieux, mots clés, etc. ). Celles-ci disposent en effet de pages dédiées dans le Portail qui réunissent toutes les sources électroniques en faisant mention.

Pour ce faire, il est utile que les projets mettent en place des systèmes de citabilité permettant de référencer telle entité nommée. Par exemple, si l’entité “François Rabelais” figure dans une source, la [page qui lui est déjà dédiée](https://portail.biblissima.fr/fr/ark:/43093/pdata67e436ad9c35c7274cd6901ea16ba4e9d1e4421d) dans le Portail pourrait faire mention de cette occurrence dans un champ “Référencé(e) dans” avec l’intitulé et l’URL de la section (livre, chapitre, paragraphe) de la source éditée. Si une entité n’est pas encore présente dans le Portail, une page lui sera créée avec le champ “Référencé(e) dans” faisant mention de l’occurrence.

Pour faciliter ce processus, il est conseillé de faire un alignement des entités nommées vers les référentiels Biblissima ou un autre référentiel disponible dans le _Linked Open Data_.

!!! example "Exemple du Corpus Fabliaux (BFM - Lyon)"

    Issu d'un projet lauréat de l'AMI Biblissima+ 2022, le jeu de données [Fabliaux](https://data.biblissima.fr/w/Item:Q404134) a été intégré dans le Portail **en se basant sur les identifiants Biblissima des cotes des témoins manuscrits, des oeuvres et auteurs** associés aux textes édités dans le corpus. Le résultat de cette intégration prend essentiellement la forme d'un référencement des éditions numériques sur les pages "Texte" du Portail :

    Exemple du texte en ancien français [_La Demoisele a la grue_](https://portail.biblissima.fr/fr/ark:/43093/tdata3eaa100f3acbfbbf4dbcee449f7e05a481fe499a) attribué à l'auteur Garin : **voir la section "Editions numériques"**, avec le lien vers la page correspondante dans la _Base de français médiéval_, et le lien vers le manuscrit sur lequel l'édition s'est basée.
