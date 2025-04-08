Le Portail Biblissima crée et expose des ressources IIIF conformes à [l'API Présentation](https://iiif.io/api/presentation/) de plusieurs types et pour différents usages.

Pour plus d'informations sur IIIF, voir la rubrique [Interopérabilité IIIF](../iiif/index.md).

## Manifestes IIIF

### Manifestes par descripteur iconographique

Des Manifestes IIIF sont créés dynamiquement par le Portail pour rassembler toutes les **images d’enluminures** indexées avec un même **descripteur iconographique**. On peut ainsi parcourir et comparer les images sur lesquelles sont représentés tel [personnage](https://portail.biblissima.fr/fr/ark:/43093/desc4880ccd93030533d117dc9eab6d5982d900208dd) ou tel [animal](https://portail.biblissima.fr/fr/ark:/43093/desc8424ed0f857f095d4ffe3fe12c125f121ddbcdc6) (réel ou imaginaire), ou encore tel [monument](https://portail.biblissima.fr/fr/ark:/43093/desce2cc8454a5b18f161de857f4f9f63351b07f185d) ou [objet](https://portail.biblissima.fr/fr/ark:/43093/desc07ab7c626dd4c842903f9572f430f02a8e3270a1). 

Ces « collections » virtuelles d’images contiennent à la fois les feuillets numérisés provenant de Gallica (numérisations intégrales disponibles via IIIF) et les images issues de Mandragore et d'Initiale (numérisations de détails, non accessibles à distance via IIIF). Ainsi du point de vue de IIIF ces Manifestes sont des agrégats de Canevas provenant de divers Manifestes sources, principalement issus de Gallica (BnF) et de ARCA (IRHT-CNRS).

``` title="Modèle d'URL"
https://portail.biblissima.fr/iiif/manifest/ark:/43093/{id_biblissima}
```
!!! example "Exemple"

    Page du descripteur [centaure](https://portail.biblissima.fr/ark:/43093/desc57cb76cd3739a24a9277b6669d95b5f3a590e771) | [Manifeste JSON](https://portail.biblissima.fr/iiif/manifest/ark:/43093/desc57cb76cd3739a24a9277b6669d95b5f3a590e771) (API Présentation 2.1)

### Manifestes du module de recherche iconographique

Le module ["Recherche d'images" du Portail](https://portail.biblissima.fr/fr/iconography) génère des Manifestes à la volée en réponse à une requête formulée dans l'application. Ils combinent ainsi toutes les images numérisées d'enluminures et décors correspondant aux résultats d'une recherche.

``` title="Modèle d'URL"
https://portail.biblissima.fr/iiif/manifest?descriptors={parametres_requete}
```
!!! example "Exemple"

    Résultats d'une recherche sur les termes "Planète" + "Cosmographie" + filtre "13e siècle" [Manifeste JSON](https://portail.biblissima.fr/iiif/manifest?descriptors=AND|569c70bc8f3f52b8966895b97ace86644dca444a,AND|86e65567ec9ac97ea2404af46cafa34d6f4920e7&date=OR|1201-1300) (API Présentation 2.1)

### Manifestes pour les documents épigraphiques

Le Portail expose les Manifestes IIIF des inscriptions numérisées par le CESCM de Poitiers dans le cadre du _Corpus des inscriptions de la France médiévale_ (CIFM).

Les Manifestes sont pré-générés à partir de collections Nakala rassemblant les images et leurs métadonnées. Un script Python permet une génération par lots (code source sur Gitlab : [https://gitlab.huma-num.fr/biblissima/niiif-niiif](https://gitlab.huma-num.fr/biblissima/niiif-niiif)). 

Les images restent hébergées dans Nakala et sont appelées via IIIF grâce au service API Image proposé par cet entrepôt de données (plus d'informations dans la [documentation d'Huma-Num](https://documentation.huma-num.fr/nakala-presenter-ses-donnees/#implementation-du-protocole-iiif-dans-nakala)).

``` title="Modèle d'URL"
https://portail.biblissima.fr/iiif/manifest/nkl.{id_nakala}.json
```
!!! example "Exemple"

    Page de l'inscription [CIFM II, 15](https://portail.biblissima.fr/fr/ark:/43093/inscdatac99f31dd9fbd8a01dc22b90d5326766907773487) | [Manifeste JSON](https://portail.biblissima.fr/iiif/manifest/nkl.cc9b360k.json) (API Présentation 3.0) | DOI Nakala [10.34847/nkl.cc9b360k](https://doi.org/10.34847/nkl.cc9b360k)


## Collections IIIF

Des Collections IIIF sont créées pour chaque collection de livres identifiée dans les données du Portail et disposant de documents numérisés compatibles avec les standards IIIF. Elles sont utilisées pour initialiser le visualiseur Mirador sur les pages « Collections historiques » du Portail avec l'ensemble des documents numérisés rattachés à **une même collection ancienne de livres**.

Les Collections IIIF sont aussi utilisées pour rassembler tous les Manifestes associés à une même entité dans le Portail, par exemple un manuscrit disposant de plusieurs numérisations ([exemple](https://portail.biblissima.fr/ark:/43093/mdataac8f6092020e37c0aee72b242e08bb88e50bedd7), [exemple](https://portail.biblissima.fr/ark:/43093/mdata82cb770de8482e2450c37358ebd213b2988291b9)), ou une édition disposant de plusieurs exemplaires numérisés dans différentes bibliothèques ([exemple](https://portail.biblissima.fr/fr/ark:/43093/edataa68ed64b24c168fa93e50e6402bc9ded905731e2)).

``` title="Modèle"
https://portail.biblissima.fr/iiif/collection/ark:/43093/{id_bbma}
```
!!! example "Exemple"
    
    Page de la Collection [Bibliothèque de l'abbaye de Saint-Denis](https://portail.biblissima.fr/fr/ark:/43093/coldata65803064bc7454a8b5b401597891be99d95c24eb) -- [Collection JSON](https://portail.biblissima.fr/iiif/collection/ark:/43093/coldata5151005ea5833e5a05e2639cbb210946cb7e0609) (API Présentation 2.1)
