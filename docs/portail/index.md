# Le Portail Biblissima

## Présentation

Le [Portail Biblissima](https://portail.biblissima.fr) offre un accès unique et simple à un ensemble de données numériques sur **l’histoire de la transmission des textes produits de l’Antiquité à la Renaissance en Orient comme en Occident**, quel qu’en soit le support et quelle qu’en soit la langue.

Il est le point d'entrée dans les données de l'infrastructure numérique Biblissima+ (2021-2029), _Observatoire des cultures écrites anciennes, de l'argile à l'imprimé_ (ANR-21-ESRE-0005). Pour plus d’informations sur le projet dans son ensemble, voir le site [projet.biblissima.fr](https://projet.biblissima.fr).

Le Portail agrège des ressources électroniques hétérogènes produites par les partenaires du consortium Biblissima (2012-2021) puis Biblissima+ (2021-2029). Il a pour but de mettre en interopérabilité collections patrimoniales, archives de la recherche et littérature scientifique (documentation écrite originale, collections de sources numérisées, bibliographie et archives de la recherche la concernant).

Certaines ressources disponibles dans le Portail ont été traitées et intégrées à l'initiative de l'équipe Biblissima, notamment dans le cadre d'expérimentations autour de IIIF, ou sont le résultat de sollicitations de la part d'institutions ne faisant pas partie du consortium.

!!! note "A propos"

    Le Portail est administré et maintenu par [l’équipe technique de Biblissima+](https://projet.biblissima.fr/fr/organisation/equipe-biblissima). Elle prend en charge autant les évolutions fonctionnelles du Portail que l’ensemble du processus de collecte, de traitement, d’alignement et de versement des données dans la plateforme.

## Périmètre de données

La liste des bases et jeux de données actuellement agrégés dans le Portail Biblissima est disponible sur la page [Sources des données](https://portail.biblissima.fr/fr/data-sources).

En complément, voir la [liste complète des autres ressources électroniques](https://projet.biblissima.fr/fr/ressources/ressources-biblissima) situées dans le périmètre de l’Equipex Biblissima (2012-2021) et Biblissima+ (2021-2029).


## Gestion, traitement et intégration des données

### Vademecum

L’intégration des données se fait selon des modalités décrites dans le [Vademecum Biblissima](../vademecum-biblissima.md). Ce guide explique aux fournisseurs de données comment contribuer à l’enrichissement de l’infrastructure numérique de Biblissima+.

### Format pivot

L’import des données dans le Portail se base sur un format d’entrée unique nommé **“pivot Biblissima”** [décrit plus en détail sur cette page](format-pivot-biblissima.md).

### Plan de gestion des données

Les principes de gestion des données du Portail sont décrits dans le _Plan de gestion des données de l'observatoire des cultures écrites Biblissima+_ (Emmanuelle Morlock, Régis Robineau, Eduard Frunzeanu, Kévin Bois. DOI : [10.5281/zenodo.7081673](https://doi.org/10.5281/zenodo.7081673)).

Le Portail s'inscrit dans le périmètre de données principal de l’infrastructure numérique de Biblissima+ (périmètre P1) décrit de façon détaillée dans le PGD du projet (voir la version initiale du PGD : [v1.08 (15 septembre 2022), p. 52 et ss.](https://doi.org/10.5281/zenodo.7081674)).


## Technologies et outils utilisés

Le Portail est propulsé par :

 - [CubicWeb](https://www.cubicweb.org), plateforme open source de développement d'application web sémantique écrite en Python et développée par la société française Logilab ;
 - le SGBD [Postgresql](https://www.postgresql.org) ;
 - la bibliothèque Javascript [React](https://react.dev) pour plusieurs applications et composants d'interface tels que les diagrammes de cooccurrences ou le module de recherche iconographique.

Le Portail utilise les API IIIF de plusieurs bibliothèques numériques à travers le monde afin d'afficher les documents numérisés à distance dans son visualiseur. Pour plus d'informations, voir la [rubrique consacrée à IIIF](../iiif/index.md).

Il recourt à deux visualiseurs d'images compatibles avec les standards IIIF :

- [Mirador](https://projectmirador.org), visualiseur d'images multi-fenêtres proposant des fonctionnalités avancées de zoom, de comparaison et d'annotation d’images, indépendamment de la bibliothèque numérique qui les héberge. L'instance de Mirador utilisée sur le Portail a fait l'objet de diverses adaptations et comporte plusieurs plugins permettant d'étendre les fonctionnalités du visualiseur. Le code source de l'instance Biblissima est [disponible sur Github](https://github.com/biblissima/mirador3-biblissima).
- [OpenSeadragon](https://openseadragon.github.io), visualiseur d'images compatible avec l'API Image de IIIF.


## Mises à jour

Voir la page [Journal des mises à jour et développements](changelog.md).


## API

Voir la [page API](../api/index.md).
