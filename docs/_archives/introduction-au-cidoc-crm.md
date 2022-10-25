# Introduction au CIDOC CRM

!!! warning "Attention"

    Cette page est une archive. Elle reflète les travaux de modélisation menés en 2013-2016 dans le cadre de Biblissima.


## Le CIDOC CRM en quelques mots

Présentation lors de la Journée BnF-Biblissima _"Modélisation des données et humanités numériques"_ (BnF, Paris) : [CIDOC CRM et Linked Data](https://projet.biblissima.fr/fr/cidoc-crm-linked-data) (Pauline Charbonnier)

Le CIDOC CRM a été développé par le Comité International pour la DOCumentation (CIDOC) de l’International Council of Museum (ICOM), CRM signifiant Conceptual Reference Model (modèle conceptuel de référence). Ce modèle sémantique constitue une « ontologie » de l'information relative au patrimoine culturel. La réflexion autour de ce modèle a commencé dès 1996. Issu du monde des musées, c’est aussi un standard qui cherche à atteindre les données du monde des bibliothèques, des archives et des institutions de recherche. Il a donc une ambition multi-domaine.

Le CIDOC CRM est un standard aidant à intégrer l’information culturelle issue de différentes sources dans un seul environnement où on peut poser des questions plus étendues que celles qu’on peut poser individuellement à différents ensembles d’information séparés.

Le modèle a fait l’objet d’une normalisation et a été publié en 2006 par l'ISO en tant que norme internationale ([ISO 21127:2006](http://www.iso.org/iso/catalogue_detail.htm?csnumber=34424)). Le CIDOC CRM est le standard international pour l’échange contrôlé de données relatives au patrimoine culturel.

Depuis, le modèle a évolué. Il est maintenu par le CRM Special Interest Group. La version 5 du modèle a été publiée en 2008. La dernière version, la [version 6.2.1](http://www.cidoc-crm.org/docs/cidoc_crm_version_6.2.1.pdf), date d'octobre 2015. Une nouvelle version de la norme ISO ([ISO 21127:2014](http://www.iso.org/iso/iso_catalogue/catalogue_tc/catalogue_detail.htm?csnumber=57832)), publiée en décembre 2014, est basée sur la version 5.0.4 du CIDOC CRM. Enfin, le CIDOC CRM existe encodé en RDFS et en OWL.

## Documents de référence

*   Site Web du [CIDOC CRM](http://www.cidoc-crm.org/)
*   Official release : [http://www.cidoc-crm.org/official\_release\_cidoc.html](http://www.cidoc-crm.org/official_release_cidoc.html)

### Introductions

*   [CRM Primer](http://www.cidoc-crm.org/docs/CRMPrimer_v1.1.pdf), Dominic Oldman et CRM Labs
*   Liste de tutoriels : [http://www.cidoc-crm.org/tutorials.html](http://www.cidoc-crm.org/tutorials.html)
*   [Représentations graphiques](http://www.cidoc-crm.org/cidoc_graphical_representation_v_5_1/graphical_representaion_5_0_1.html) du CIDOC CRM

### Implémentation RDFS (FORTH-ICS) et OWL (Université d’Erlangen)

*   [http://www.cidoc-crm.org/rdfs/cidoc\_crm\_v5.0.4\_official\_release.rdfs](http://www.cidoc-crm.org/rdfs/cidoc_crm_v5.0.4_official_release.rdfs) (RDFS)
*   [http://erlangen-crm.org/](http://erlangen-crm.org) (OWL)
*   [https://github.com/erlangen-crm/ecrm](https://github.com/erlangen-crm/ecrm) (OWL)

## Pourquoi s’intéresser au CIDOC CRM ?

Ce n’est pas nouveau, on assiste un essor de la présence des musées et d’autres institutions culturelles sur internet. Il y a désormais un besoin d’intégrer différentes ressources issues de ce mouvement à des portails offrant des recherches fédérées afin de faciliter la découverte de ressources provenant de collections différentes voire de domaines différents (musées, bibliothèques, archives).

De plus, la volonté de rendre accessibles les données des institutions patrimoniales et de la recherche web de données exige de rendre l’information compréhensible à l’extérieur d’une base de données. Le portail Biblissima qui vise à rendre intéropérables une quarantaine de ressources sur le patrimoine écrit du Moyen Âge et de la Renaissance s’inscrit dans cette problématique.

Pour répondre à cette problématique, nous avons besoin d’outils adaptés pour distribuer l’information des collections culturelles issues :

*   de différentes collections
*   de différentes structures de données
*   de différents systèmes logiciels

L’utilisation du CIDOC CRM, de FRBRoo et du Linked Data permet de combler ce besoin.

## CIDOC CRM : Définition

Le CIDOC CRM est une ontologie qui représente la sémantique sous-jacente des structures de la documentation du patrimoine culturel.

Une ontologie est la formalisation des connaissances, elle représente les concepts fondamentaux d’un domaine d'information et les relations qui les unissent.

Dans le domaine du patrimoine culturel ces concepts fondamentaux sont les objets (matériau, décor, inscriptions), leur création et leur évolution (conservation, modifications qu’ils ont subi etc.), leurs intervenants, leur localisation, leur documentation.

Le CIDOC CRM est une ontologie empirique, c’est à dire qu’il est basé sur la documentation des modèles et des pratiques d’institutions culturelles. Cela permet d’interpréter les descriptions effectives produites par les musées et débouche sur une explication partagée de la sémantique du patrimoine culturel. Enfin, c’est un modèle orienté objet.

Ce modèle conceptuel de référence signifie deux choses :

*   il est général (cependant, il peut être spécifié par des extensions précisant certains concepts).
*   il est indépendant de toute implémentation technique. En effet, la conception d’une représentation des connaissances ne doit pas être basée sur ou dépendante d’une technologie particulière. Toutefois, il est généralement employé avec le RDF (Resource Description Framework), le standard du Linked Data.

Le CIDOC CRM n’est pas prescriptif, il ne dicte pas une structure commune de données (pas de champs ou de valeurs obligatoires). Il ne se préoccupe pas des différentes terminologies utilisées par les institutions culturelles, tout en permettant de “brancher” des terminologies locales.

## Objectifs du CIDOC CRM

> _“The primary role of the CRM is to enable exchange and integration between heterogeneous sources of cultural heritage information.”_

Il fournit des définitions sémantiques et des clarifications nécessaires (un langage commun) à des sources d’information hétérogènes pour permettre leur intégration malgré des incompatibilités sémantiques ou structurelles.

Par ces définitions, le CIDOC CRM créé un cadre pour l’harmonisation des données : il permet aux institutions culturelles de rendre compatibles leurs documentations sans rien perdre de leurs spécificités ni du degré de précision de leurs données.

Il facilite alors l'échange et la recherche d'informations dans le domaine du patrimoine culturel.  
La fonction d’une ontologie est de fournir une structure à l’intérieur de laquelle des jeux de données différents peuvent interagir. Si des sources de données hétérogènes issues de différents types d’institutions culturelles peuvent être intégrées en utilisant une représentation des connaissances pertinente, on peut alors mettre en oeuvre des techniques de raisonnement informatiques, ce qui étend les ressources initiales et crée une ressource très significative pour la recherche.
