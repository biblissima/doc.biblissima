# Le format pivot Biblissima

Le "pivot Biblissima" est un format XML ad hoc servant à l'import des données dans le Portail.

Il a été défini par l’équipe technique de Biblissima afin de représenter de manière unifiée les structures hétérogènes des bases de données sources gérées par les partenaires. Il permet de mettre en interopérabilité au sein du Portail les jeux de données fournis.

!!! tip "A noter"

    Ce format pivot est évolutif, il peut être adapté par l'équipe Biblissima+ selon les besoins du Portail et selon les spécificités des données à la source.

Le format XML pivot définit notamment les principaux types d’entités interrogeables dans le Portail :

| Élement XML | Type d'entité  |
| ----------- | -------------- |
| `<Book>` | Livre manuscrit ou imprimé (exemplaire) |
| `<Collection>` | Ancienne collection de livres |
| `<Descriptor>` | Descripteur (pour les bases iconographiques) |
| `<GroupBooks>` | Regroupement de livres (multi-volumes) |
| `<Inventory>` | Inventaires anciens et catalogues de vente 
| `<Manifestation>` | Édition imprimée |
| `<Participant>` | Intervenant, personne physique ou morale |
| `<Place>` | Lieu |
| `<Repository>` | Établissement de conservation |
| `<Text>` | Texte ("Expression", au sens de FRBR) |
| `<Work>` | Oeuvre ("Work", au sens de FRBR) |


La DTD complète du format XML pivot Biblissima est [disponible sur Github](https://github.com/biblissima/bibma-metadata/blob/master/xml-pivot/XML_Pivot_Biblissima.dtd).
