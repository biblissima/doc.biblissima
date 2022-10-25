# thesaurus Biblissima

!!! warning "Attention"

    Cette page est une archive. Elle reflète les travaux de modélisation menés en 2013-2016 dans le cadre de Biblissima.


## Qu’est-ce qu’un thesaurus ?

Un thesaurus est un système de structuration utilisé pour indexer des documents et en faciliter l’interrogation. Il s’agit d’un ensemble de termes normalisés et reliés par des relations terminologiques et sémantiques (hiérarchisation, généralisation, association, équivalence). Les thesauri appartiennent à la famille des **vocabulaires contrôlés**, au même titre que les systèmes de classification (Dewey, CDU) et les fichiers d’autorité (RAMEAU, LCSH). Dans l’univers du web sémantique, ces systèmes d’organisation des connaissances sont souvent regroupés sous le terme générique de “référentiels”, qui inclut également les ontologies (voir la page de présentation de [l’ontologie Biblissima](https://doc.biblissima.fr/ontologie)). Selon le type et le volume des données que l’on veut structurer, on peut constituer des thesauri spécialisés (basés de préférence sur des référentiels déjà existants) qui peuvent être associés à des ontologies afin de faciliter et de raffiner l’interrogation des données.

Des thesauri spécialisés ont été élaborés dans de nombreux domaines, parmi lesquels :

*   la géographie : [Thesaurus of Geographic Names](https://www.getty.edu/research/tools/vocabularies/tgn/) (Getty Institute)
*   l’iconographie : [IconClass](http://www.iconclass.nl) (Netherlands Institute for Art History)
*   l’archéologie : [PACTOLS](http://www.frantiq.fr/thesaurus-pactols) (réseau de bibliothèques et centres de documentation FRANTIQ)
*   la musique : [MIMO](http://www.mimo-international.com)
*   les archives : [thesaurus W des archives de France](http://www.archivesdefrance.culture.gouv.fr/gerer/classement/normes-outils/thesaurus/) (Ministère de la Culture)

### Quel format pour la structuration des termes ?

Dans le web de données, un thesaurus est généralement représenté selon le modèle [SKOS](http://www.w3.org/2004/02/skos/) (Simple Knowledge Organization System). SKOS est une recommandation du W3C qui permet d’exprimer selon le formalisme RDF des vocabulaires contrôlés (thesauri, schémas de classification, listes d’autorité) et de les publier facilement sur le Web. Un des avantages de SKOS est aussi de favoriser l’interconnexion d’un thesaurus avec d’autres vocabulaires structurés pour le Web sémantique. Même s’il ne prend pas en charge l’intégralité des normes ISO sur les thesauri (ISO 25964-1 et ISO 25964-2), ce modèle permet néanmoins de satisfaire la majorité des besoins pour la structuration et la publication d’un thesaurus. Selon la nature des données, il peut être complété par d’autres modèles tels que FOAF ou vCard-rdf.

Un thesaurus exprimé en SKOS consiste en une **collection de concepts**. Un concept est conçu comme une entité abstraite pouvant être représentée par un ou plusieurs termes (descripteurs et non-descripteurs). Chaque concept est identifié par un **identifiant unique** (URI) et décrit par des données couramment utilisées dans un thesaurus :

*   informations terminologiques : terme retenu et termes rejetés, traductions des termes
*   relations sémantiques : hiérarchique ou associative
*   notes : définitions des termes, notes d’application, exemples

## L’approche Biblissima

### Rôle du thesaurus Biblissima

Le volume imposant de données provenant des presque 40 bases partenaires de Biblissima (bases de données de diverses natures, éditions électroniques, catalogues de bibliothèques, etc.) exige une gestion qui s’appuie conjointement sur une ou plusieurs ontologies (voir la page consacrée à [l’ontologie](https://doc.biblissima.fr/ontologie)) et un thesaurus constitué de plusieurs sous-thesauri.

Cette complémentarité permet d’un côté de **définir les relations entre les différentes classes de données** et, d’un autre, de **hiérarchiser les entités relevant de chaque classe**. La création du thesaurus évite d’alourdir l’ontologie et donne la possibilité de modifier sur le long terme le contenu et les relations des éléments qui le composent.

En plus d’intégrer et de hiérarchiser les données, le thesaurus a pour fonction de **créer des points de contact entre des ressources qui partagent les mêmes unités d’information**, mais s’inscrivent dans des modèles de description différents (approches diverses selon les spécialités ou les objectifs scientifiques).

Il jouera un rôle important dans la conception et l’utilisation du moteur de recherche du portail Biblissima en facilitant divers types d’opérations :

*   saisie dans un champ texte ou formulation d’une requête de recherche (auto-complétion)
*   enrichissement de requêtes (désambiguïsation et expansion de la requête en incluant les termes associés ou synonymes)
*   navigation et recherche par facettes

Plusieurs bases partenaires proposent une partie de ces fonctionnalités : [E-ktobe](http://www.mss-syriaques.org/), [Europeana Regia](http://www.europeanaregia.eu), [Jonas](http://jonas.irht.cnrs.fr), [Manuscripta medica](http://www.manuscripta-medica.com), [Reliures](http://reliures.bnf.fr).

### Gestion de l’interopérabilité

L’interopérabilité est conçue par rapport à trois axes :

1.  fédérer les données Biblissima entre elles ;
2.  aligner les données Biblissima avec d’autres référentiels ;
3.  rendre compatible la modélisation Biblissima avec d’autres ontologies

**1.** Grâce à la plate-forme de création et de gestion du thesaurus Biblissima, chaque concept aura son propre **identifiant pérenne (URI)**. Cela permettra de fédérer les variantes graphiques du nom d’un élément qui figure dans une base iconographique, catalographique ou dans l’édition d’un inventaire de bibliothèque, et de gérer les homonymies (surtout lorsqu’on a à traiter un volume de données aussi important que celui du programme Biblissima). Pour les partenaires Biblissima, le thesaurus permettra d’identifier des passerelles entre leurs jeux de données et d’autres ressources, afin de réutiliser et d’enrichir des données existantes.

Les identifiants [ARK](http://www.bnf.fr/fr/professionnels/issn_isbn_autres_numeros/a.ark.html) associés aux notices d’autorités de la BnF serviront de pivot afin d’articuler l’interopérabilité entre les ressources Biblissima sans imposer aucune modification à la source. A cet effet, les données Biblissima qui ne se trouvent ni dans le Catalogue général de la BnF ni dans RAMEAU seront pourvues d’une notice d’autorité, même si ces éléments ne relèvent pas en totalité des collections de la BnF. Ces données seront ensuite versées dans le portail VIAF, qui va générer des identifiants exploitables par d’autres institutions et projets internationaux.

A titre illustratif, voici quelques exemples d’alignements relatifs à des auteurs et titres, à des établissements de conservation et des cotes de manuscrit :

**Tableau 1** : Auteurs et titres présents dans les bases Mandragore et Initiale alignés avec les référentiels de la BnF et VIAF

| Mandragore (BnF)                                | Initiale (IRHT)     | Référentiels Auteur     | Référentiels Titre |
|-------------------------------------------------|---------------------|-------------------------|--------------------|
| Auteur / Titre                                  | Auteur              | Titre                   | URI BnF Auteur     | ID VIAF Auteur          | Forme retenue Auteur                                     | Autre forme Auteur             | URI BnF Oeuvre      | Forme retenue Titre   |
| ado viennensis (s.), martyrologium              | Ado Viennensis      | Martyrologium           | URI                | viaf.org/viaf/73864627  | Ado Viennensis (080.?-0875?)                             | Adon (saint, 080.?-0875?)      | URI                 | Martyrologium         |
| aegidius romanus, de regimine principum         | Aegidius Romanus    | Regimine principum (De) | URI                | viaf.org/viaf/100187638 | Aegidius Romanus (1247?-1316)                            | Gilles de Rome (1247?-1316)    | URI                 | De regimine principum |
| alexander de hales, summa theologica            | Alexander Halensis  | Summa theologica        | URI                | viaf.org/viaf/95294006  | Alexander Halensis (1185-1245)                           | Alexandre de Halès (1185-1245) | URI                 | Summa theologica      |
| alexandre de paris, athis et prophilias         | Alexandre de Bernay | Athis et Prophilias     | URI                | viaf.org/viaf/4943242   | Alexandre de Paris                                       | URI                            | Athis et Prophilias |
| zahrâwî (al-), tasrîf (trad. gérard de crémone) | Albucasis           | Chirurgia               | URI                | viaf.org/viaf/56636061  | al-Zahrāwī, H̱alaf ibn ʿAbbās Abū al-Qāsim (0936?-1013?) |


**Tableau 2** : Établissements de conservation et cotes de manuscrit cités dans quelques bases partenaires

| Bases de données                | Mandragore (BnF)                                                                   | BAM (BnF)                                                    | Pinakes (IRHT)                         | Jonas (IRHT)                                 | Manuscripta medica (EPHE) |
|---------------------------------|------------------------------------------------------------------------------------|--------------------------------------------------------------|----------------------------------------|----------------------------------------------|---------------------------|
| Dépôt                           | Bibliothèque nationale de France, Département des Manuscrits, Division occidentale | Bibliothèque nationale de France. Département des manuscrits | Bibliothèque nationale de France (BnF) | Bibliothèque nationale de France, Manuscrits | BnF                       |
| Cote                            | Coislin 86                                                                         | Coisl. 086                                                   |
| Français 74-85                  | fr. 00074-00085                                                                    |
| Français 74                     | Français 74                                                                        |
| Français 75                     | Français 75                                                                        | fr. 00075                                                    |
| Français 83                     | Français 83                                                                        | fr. 00083                                                    |
| Latin 14392 [ff. 1-83, 156-456] | Latin 14392                                                                        | lat. 14392                                                   |


**2.** Compte tenu des évolutions du web sémantique, chaque concept, dans la mesure du possible, sera aligné avec plusieurs vocabulaires internationaux. Parmi ceux-ci, outre les référentiels de la BnF (RAMEAU et autorités BnF), on retrouvera celui de VIAF, de GeoNames, du Getty Institute, de DBPedia. Par l’adoption d’identifiants propres à ces référentiels internationaux, les données Biblissima seront interopérables avec d’autres projets de recherche.

**3.** Le thesaurus sera relié à [l’ontologie Biblissima](https://doc.biblissima.fr/ontologie), elle-même compatible avec l’ontologie FRBRoo (qui articule les spécifications FRBR - modélisation des notices bibliographiques des bibliothèques - et CIDOC-CRM - ontologie destinée au patrimoine culturel).

Pour avoir un aperçu de la modélisation des données par l’entremise de l’ontologie et du thesaurus, voici l’exemple de la classe _Actor_, qui reprend les cas cités dans le tableau 1 :

**Schéma** : Modélisation des données pour la classe _Actor_.

[schéma E39 Actor](/assets/schemathesauonto-1.png)

Exemple de description RDF compatible avec l’ontologie CIDOC-CRM et FRBRoo pour une instance de la classe _Actor_ :

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<rdf:RDF
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
xmlns:efrbroo="http://erlangen-crm.org/efrbroo/"
xmlns:ecrm="http://erlangen-crm.org/current/"
xmlns:skos="http://www.w3.org/2004/02/skos/core#"
xmlns:foaf="http://xmlns.com/foaf/0.1/">
    <skos:Concept rdf:about="http://data.bnf.fr/ark:/12148/cb12016270t">
        <foaf:focus rdf:resource="http://data.bnf.fr/ark:/12148/cb12016270t#foaf:Person"/>    
        <skos:prefLabel xml:lang="fr-FR">Adon (saint ; 080.?-0875?)</skos:prefLabel>
        <skos:altLabel xml:lang="la">Ado Viennensis</skos:altLabel>
        <skos:altLabel xml:lang="la">ado viennensis (s.)</skos:altLabel>
    </skos:Concept>
    <ecrm:E39_Actor rdf:about="http://data.bnf.fr/ark:/12148/cb12016270t#foaf:Person">
        <ecrm:P14.1_performed>
            <efrbroo:F27_Work_Conception rdf:about="http://data.biblissima.fr/thesaurus/resource/ark:/00000/ty38295824520"/>
        </ecrm:P14.1_performed>
    </ecrm:E39_Actor>
</rdf:RDF>
```

### Thématiques principales

Le thesaurus Biblissima englobera un **ensemble de sous-thesauri et de listes d’autorités** sur les thématiques suivantes :

*   **personnes et collectivités** (abbayes, universités, établissements de conservation etc.). Sources: le [fichier d’autorité de la BnF](http://catalogue.bnf.fr/jsp/recherchemots_simple.jsp?nouvelleRecherche=O&nouveaute=O&host=catalogue), le répertoire [RAMEAU](http://rameau.bnf.fr), [VIAF](http://viaf.org)
*   **rôles** (auteur, possesseur, traducteur, enlumineur, relieur, etc.). Sources: la [liste des rôles établie par la BnF](http://data.bnf.fr/vocabulary/roles)
*   **noms géographiques** (géographie actuelle, antique et légendaire). Sources: le [fichier d’autorité de la BnF](http://catalogue.bnf.fr/jsp/recherchemots_simple.jsp?nouvelleRecherche=O&nouveaute=O&host=catalogue), le répertoire [RAMEAU](http://rameau.bnf.fr), [VIAF](http://viaf.org), [GeoNames](http://www.geonames.org), [TGN](https://www.getty.edu/research/tools/vocabularies/tgn/)
*   **vocabulaires spécialisés** propres à différents domaines de recherche (par ex. paléographie, codicologie, iconographie). Sources: les glossaires de [Codicologia](http://codicologia.irht.cnrs.fr) (IRHT) et de la base [Reliures](http://reliures.bnf.fr) (BnF); les vocabulaires iconographiques des bases [Mandragore](http://mandragore.bnf.fr) (BnF) et [Initiale](http://initiale.irht.cnrs.fr) (IRHT); le [Vocabulaire international de la diplomatique](http://www.cei.lmu.de/VID/)

Dans le schéma ci-dessous, sont représentés les principaux types de données qui figurent dans une large partie des bases, pour lesquels l’équipe Biblissima élaborera des sous-thesauri :

**Schéma** : Exemples de composantes du thesaurus Biblissima.

[Exemples de composantes du thesaurus Biblissima](/assets/thesaurus_composantes_v3_2.png)

### Pistes de gestion du thesaurus

L’objectif à long terme est de faire en sorte que le thesaurus Biblissima devienne multilingue afin de favoriser son adoption à l’international, ce qui rendrait possible l’interrogation de textes ou de bases de données en différentes langues à partir d’une seule requête.

Le thesaurus Biblissima, à l’instar d’un vocabulaire contrôlé, pourrait être utilisé par les médiévistes dans leurs travaux, que ce soit pour l’édition d’un texte ou la description de manuscrits, ce qui permettrait de faire référence à un même ensemble de listes d’autorité et de terminologies spécialisées.

Afin de tenir à jour, de compléter, de corriger ou de modifier le thesaurus, sera mise au point une gestion collaborative via une plate-forme commune, en sollicitant l’apport des équipes partenaires de l’équipex.

### Diffusion du thesaurus

Le thesaurus sera accessible et interrogeable sous différentes formes, comme par exemple :

*   un ou plusieurs documents téléchargeables (PDF)
*   une interface Web permettant une consultation rapide pour les personnes l’utilisant de manière régulière
*   un SPARQL endpoint pour les programmes informatiques manipulant des données RDF
*   des exports en SKOS

_Nous remercions vivement Katell Briatte (Ministère de la Culture et de la Communication), Emmanuelle Bermès (Centre Pompidou), Sébastien Peyrard et Agnès Simon (BnF) pour leurs remarques et corrections._
