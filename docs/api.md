---
hide:
  - navigation
---

# API

## Référentiels Biblissima (Wikibase)

Se reporter à la page dédiée [https://data.biblissima.fr/w/Project:API](https://data.biblissima.fr/w/Project:API).


## Portail

### IIIF API Présentation
 
#### Manifestes IIIF

Des Manifestes IIIF sont créés dynamiquement pour rassembler toutes les images d’enluminures de manuscrits indexées avec un même descripteur iconographique. On peut ainsi parcourir et comparer les images sur lesquelles est représenté tel [personnage](https://portail.biblissima.fr/fr/ark:/43093/desc4880ccd93030533d117dc9eab6d5982d900208dd) ou tel [animal](https://portail.biblissima.fr/fr/ark:/43093/desc8424ed0f857f095d4ffe3fe12c125f121ddbcdc6) (réel ou imaginaire), ou encore tel [monument](https://portail.biblissima.fr/fr/ark:/43093/desce2cc8454a5b18f161de857f4f9f63351b07f185d) ou [objet](https://portail.biblissima.fr/fr/ark:/43093/desc07ab7c626dd4c842903f9572f430f02a8e3270a1). 

Ces « collections » virtuelles d’images contiennent à la fois les feuillets numérisés provenant de Gallica (numérisations intégrales disponibles via IIIF) et les images issues de Mandragore et d'Initiale (numérisations de détails, non accessibles à distance via IIIF).

``` title="Modèle"
https://portail.biblissima.fr/iiif/manifest/ark:/43093/{id_bbma}
```
!!! example "Exemple"

    Page du descripteur [centaure](https://portail.biblissima.fr/ark:/43093/desc57cb76cd3739a24a9277b6669d95b5f3a590e771) -- [Manifest (JSON)](https://portail.biblissima.fr/iiif/manifest/ark:/43093/desc57cb76cd3739a24a9277b6669d95b5f3a590e771)

#### Collections IIIF

Des collections IIIF sont créées pour chaque collection de livres identifiée dans les données du cluster et disposant de documents numérisés compatibles avec les standards IIIF. Elles sont utilisées pour initialiser le visualiseur Mirador sur les pages « Collections historiques » du Portail avec l'ensemble des documents numérisés rattachés à une même collection ancienne de livres.

``` title="Modèle"
https://portail.biblissima.fr/iiif/collection/ark:/43093/{id_bbma}
```
!!! example "Exemple"
    
    Page de la collection [Bibliothèque de l'abbaye de Saint-Denis](https://portail.biblissima.fr/fr/ark:/43093/coldata65803064bc7454a8b5b401597891be99d95c24eb) -- [Manifest (JSON)](https://portail.biblissima.fr/iiif/collection/ark:/43093/coldata5151005ea5833e5a05e2639cbb210946cb7e0609)
