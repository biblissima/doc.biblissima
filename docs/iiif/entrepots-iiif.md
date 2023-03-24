# Exemples d'entrepôts IIIF

Dès 2013, l'ÉquipEx Biblissima (2012-2021), devenu Biblissima+ (2021-2029), a soutenu l'adoption et l'implémentation de IIIF dans plusieurs bibliothèques numériques de manuscrits et imprimés anciens conservés en France : 

- **Gallica** (BnF) ;
- **BVMM** - Bibliothèque virtuelle des manuscrits médiévaux (IRHT-CNRS) ;
- **BVH** - Bibliothèques virtuelles humanistes (CESR, Université de Tours).

## Gallica (BnF)

[Gallica](http://gallica.bnf.fr) est la bibliothèque numérique de la Bibliothèque nationale de France et de ses partenaires.

En complément des informations ci-dessous, voir aussi la page [API IIIF de récupération des images de Gallica](https://api.bnf.fr/fr/api-iiif-de-recuperation-des-images-de-gallica) (BnF).

### API Image

Compatibilité :

- Version : **Image API 1.1** ([https://iiif.io/api/image/1.1](https://iiif.io/api/image/1.1/))
- Niveau de conformité : **Level 2** ([https://iiif.io/api/image/1.1/compliance/#level2](https://iiif.io/api/image/1.1/compliance/#level2))

Modèles d'URL :
 
``` title="Requête d'image :"
https://gallica.bnf.fr/iiif/ark:/12148/{ARK_Name}/f{n}/{region}/{size}/{rotation}/{quality}.{format}
```

``` title="Requête d'information sur l'image :"
https://gallica.bnf.fr/iiif/ark:/12148/{ARK_Name}/f{n}/info.json
```

La partie `ark:/12148/{ARK_Name}/f{n}` correspond à l'élément [identifier](https://iiif.io/api/image/2.1/#identifier) de l'URL IIIF : `{ARK_Name}` désigne le nom ARK du document numérisé, suivi de `/f{n}`, où `{n}` est le numéro d'image dans la séquence du document (f1, f2 etc.).

!!! example "Exemples"

    - [https://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/f7/full/full/0/native.jpg](http://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/f7/full/full/0/native.jpg) (image pleine taille)
    - [https://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/f7/508,1166,485,1042/500,/0/native.jpg](http://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/f7/508,1166,485,1042/500,/0/native.jpg) (région d'intérêt, redimensionnée de façon proportionnelle à 500 pixels de largeur)

### API Présentation

Compatibilité :

- Version : **Presentation API 2.0** ([https://iiif.io/api/presentation/2.0/](https://iiif.io/api/presentation/2.0/))

Modèle d'URL :

``` title="Requête d'un Manifeste :"
https://gallica.bnf.fr/iiif/ark:/12148/{ARK_Name}/manifest.json
```

!!! example "Exemple"

    - URL de Manifeste (JSON-LD) : [https://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/manifest.json](https://gallica.bnf.fr/iiif/ark:/12148/btv1b8449043q/manifest.json) (BnF, Français 1586)


## BVMM (IRHT-CNRS)

La [Bibliothèque virtuelle des manuscrits médiévaux (BVMM)](https://bvmm.irht.cnrs.fr), élaborée par l’Institut de recherche et d’histoire des textes (IRHT-CNRS), permet de consulter la reproduction d’une large sélection de manuscrits, du Moyen Âge au XVIe siècle.

L’IRHT, avec le soutien du Ministère de la Culture (Service du Livre et de la Lecture) et du Ministère de l’Enseignement supérieur et de la Recherche, effectue les campagnes photographiques dans des fonds patrimoniaux dispersés sur tout le territoire français, hormis ceux de la Bibliothèque nationale de France.

Dans la BVMM, les manuscrits ou incunables sont reproduits intégralement et/ou partiellement (numérisation des décors ou d’une partie significative de l’ouvrage).

### API Image

Compatibilité :

- Version : **Image API 2.0** ([https://iiif.io/api/image/2.0/](https://iiif.io/api/image/2.0/))
- Niveau de conformité : **Level 2** ([https://iiif.io/api/image/2.0/compliance/](https://iiif.io/api/image/2.0/compliance/))

Modèles d'URL :

``` title="Requête d'image :"
https://iiif.irht.cnrs.fr/iiif/{ID_Image}/{region}/{size}/{rotation}/{quality}.{format}
```

``` title="Requête d'information sur l'image :"
https://iiif.irht.cnrs.fr/iiif/{ID_Image}/info.json
```

La partie `{ID_Image}` correspond à l'élément [identifier](https://iiif.io/api/image/2.1/#identifier) de l'URL IIIF (ici l'identifiant est une partie du chemin de l'image sur le serveur de l'IRHT. Ex : `Saint-Omer/627656201_MS0053/jp2/627656201_MS0053_0006`).

!!! example "Exemple"

    - [https://iiif.irht.cnrs.fr/iiif/Saint-Omer/627656201_MS0053/jp2/627656201_MS0053_0006/full/,600/0/default.jpg](https://iiif.irht.cnrs.fr/iiif/Saint-Omer/627656201_MS0053/jp2/627656201_MS0053_0006/full/,600/0/default.jpg) (image redimensionnée proportionnellement à 600 pixels de hauteur)

### API Présentation

Compatibilité :

- Version : **Presentation API 2.0** ([https://iiif.io/api/presentation/2.0/](https://iiif.io/api/presentation/2.0/))

Modèle d'URL : 

``` title="Requête d'un Manifeste :"
https://bvmm.irht.cnrs.fr/iiif/{ID}/manifest
```

!!! example "Exemple"

    - URL de Manifest JSON-LD : [https://bvmm.irht.cnrs.fr/iiif/20178/manifest](https://bvmm.irht.cnrs.fr/iiif/20178/manifest) (Saint-Omer, Bibliothèque municipale, 0053)


## BVH (CESR)

Le programme « [Bibliothèques Virtuelles Humanistes](http://www.bvh.univ-tours.fr) », porté par le Centre d’études supérieures de la Renaissance (CESR), dispose d'un volet « Fac-Similés » donnant accès à une sélection d'ouvrages de la Renaissance numérisés en Région Centre et dans les établissements partenaires. L'implémentation des API IIIF a été mise en oeuvre en 2021-2022 par l'équipe BVH, avec le soutien de l'EquipEx Biblissima+ et du service IIIF360.

### API Image

Compatibilité :

- Version : **Image API 3.0** ([https://iiif.io/api/image/3.0/](https://iiif.io/api/image/3.0/))
- Niveau de conformité : **Level 2** ([https://iiif.io/api/image/3.0/compliance/](https://iiif.io/api/image/3.0/compliance/))

Modèles d'URL :

``` title="Requête d'image :"
https://iiif.bvh.univ-tours.fr/iiif/3/{ID_Image}/{region}/{size}/{rotation}/{quality}.{format}
```

``` title="Requête d'information sur l'image :"
https://iiif.bvh.univ-tours.fr/iiif/3/{ID_Image}/info.json
```

La partie `{ID_Image}` correspond à l'élément [identifier](https://iiif.io/api/image/3.0/#3-identifier) de l'URL IIIF (ici l'identifiant est une partie du chemin de l'image sur le serveur des BVH. Ex : `FR/Tours/B372616101/B372616101_Ms_2102/JP2/B372616101_Ms_2102_0022`).

!!! example "Exemple"

    - [https://iiif.bvh.univ-tours.fr/iiif/3/FR%2FTours%2FB372616101%2FB372616101_Ms_2102%2FJP2%2FB372616101_Ms_2102_0022/full/,600/0/default.jpg](https://iiif.bvh.univ-tours.fr/iiif/3/FR%2FTours%2FB372616101%2FB372616101_Ms_2102%2FJP2%2FB372616101_Ms_2102_0022/full/,600/0/default.jpg) (image redimensionnée proportionnellement à 600 pixels de hauteur)

### API Présentation

Compatibilité :

- Version : **Presentation API 3.0** ([https://iiif.io/api/presentation/3.0/](https://iiif.io/api/presentation/3.0/))

Modèle d'URL : 

``` title="Requête d'un Manifeste :"
https://iiif.bvh.univ-tours.fr/data/manifests/{ID}_manifest.json
```

!!! example "Exemple"

    - URL de Manifest JSON-LD : [https://iiif.bvh.univ-tours.fr/data/manifests/B372616101_Ms_2102_manifest.json](https://iiif.bvh.univ-tours.fr/data/manifests/B372616101_Ms_2102_manifest.json) (Tours, Bibliothèque municipale, Ms. 2102)
