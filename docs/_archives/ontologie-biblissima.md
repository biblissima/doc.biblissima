# Ontologie Biblissima

!!! warning "Attention"

    Cette page est une archive. Elle reflète les travaux de modélisation menés en 2013-2016 dans le cadre de Biblissima.

[Parcourir l'ontologie Biblissima](https://doc.biblissima.fr/ontologie/bibma/)

Ceci est une version test de l'ontologie Biblissima mise au point dans le cadre de l’étude de cas “Florus”. Une démo est consultable ici : [https://demos.biblissima.fr/florus/#rdf-florus](https://demos.biblissima.fr/florus/#rdf-florus)

## Approche de Biblissima


Présentation lors de la Journée BnF-Biblissima _"Modélisation des données et humanités numériques"_ (BnF, Paris, décembre 2014) : [Biblissima et CIDOC CRM + FRBRoo](https://projet.biblissima.fr/fr/biblissima-cidoc-crm-frbroo)

Biblissima a créé une « ontologie fonctionnelle », permettant d'avoir une vue d'ensemble des données pertinentes pour une recherche croisée dans les bases de données des institutions partenaires. L’ontologie constituera à terme un référentiel pour l’ensemble des données faisant partie du cluster Biblissima afin de permettre leur interopérabilité. Après un mapping vers l’ontologie, nous pourrons alimenter le triplestore Biblissima avec les données exprimées en [RDF](http://www.w3.org/RDF/).

Le focus de l'ontologie de Biblissima est la **modélisation de l'histoire de la transmission des textes** et **de l'histoire des collections**. Nous avons décidé de développer une ontologie compatible avec le CIDOC-CRM et FRBRoo pour assurer l'interopérabilité interne et externe.

[Schémas des principaux évènements de l'ontologie Biblissima (PDF)](/assets/schema_ontologie_biblissima_08_15.pdf)

## Méthodologie

### Requêtes intéressantes (vision/proposition)

Il est prévu que le triplestore Biblissima donnera accès aux données des bases du cluster. Les utilisateurs pourront y interroger (langage de requête [SPARQL](http://www.w3.org/TR/sparql11-overview/)) les données sur l’histoire des collections et de la transmission des textes. En voici quelques exemples :

#### a. Histoire des collections

*   Combien de manuscrits enluminés se trouvent dans une collection particulière ? (volumétrie)
*   Quelle est la dynamique dans l’évolution des acquisitions et des dons ? (étude diachronique)
*   Qui sont les donateurs et les propriétaires d’une collection ?
*   Faire des recherches par sujet, par technique, par langue, par artiste voire par pigments (plus d’encre d'or, argent et pourpre) dans une collection.
*   Particularités d'une collection (sujet, technique, lieu de production etc.) ? Quelles en sont les lacunes ? Quelles en sont les dominantes ?
*   Visualiser les relations entre les différents acteurs (libraires, possesseurs, auteurs, commanditaires etc.) et les collections.
*   Vie d'une collection, vie d'un livre enluminé ?
*   Quels manuscrits sont probablement perdus ?
*   Quel manuscrit a été vendu et n’est pas identifié au sein d’une collection à l’heure actuelle ? (catalogue de vente)

#### b. Histoire de la transmission des textes

*   Quelles copies d'un texte sont enluminées ?
*   Quelle position occupe une copie dans l'histoire de la transmission d'un texte ? Y a-t-il des exemplaires uniques d’oeuvres ?
*   Histoire de la transmission des images ?
*   Quelles sont les versions existantes d'une oeuvre ? Qui a fait une traduction française d’un texte ancien ? Quand ?
*   Quelles sont les différentes publications existantes d'un texte ? (date, lieu de production, personne(s) responsable(s) etc.)
*   Par combien de manuscrits est transmise une oeuvre ?
*   Par quels exemplaires-témoins (qu'il s'agisse de manuscrits ou d'exemplaires de publications) telle version d'une oeuvre nous est-elle connue ?
*   Par quels fragments textuels une oeuvre est-elle uniquement connue ?
*   Quelles éditions critiques existent ?

### Point de départ

*   L’implémentation du British Museum/CRM Primer : [http://www.cidoc-crm.org/docs/CRMPrimer\_v1.1.pdf](http://www.cidoc-crm.org/docs/CRMPrimer_v1.1.pdf)
*   L’implémentation de CRM en OWL DL 1.0 (“Erlangen”) : [http://erlangen-crm.org/](http://erlangen-crm.org/)
*   L’implémentation de FRBRoo en OWL DL 1.0 (“Erlangen”) : [http://erlangen-crm.org/efrbroo/](http://erlangen-crm.org/efrbroo/)
*   Essential FRBR in OWL 2 DL [http://www.essepuntato.it/lode/http://purl.org/spar/frbr](http://www.essepuntato.it/lode/http://purl.org/spar/frbr)
*   CLAROS : [http://www.clarosnet.org/wiki/](http://www.clarosnet.org/wiki/index.php?title=Main_Page)
*   SAWS : [http://www.ancientwisdoms.ac.uk/method/](http://www.ancientwisdoms.ac.uk/method/)
*   CIDOC CRM version 5.0.4, Novembre 2011 : [http://www.cidoc-crm.org/docs/cidoc\_crm\_version\_5.0.4.pdf](http://www.cidoc-crm.org/docs/cidoc_crm_version_5.0.4.pdf)
*   CIDOC CRM version 5.1.2 Janvier 2014 : [http://www.cidoc-crm.org/docs/cidoc\_crm\_version\_5.1.2.pdf](http://www.cidoc-crm.org/docs/cidoc_crm_version_5.1.2.pdf)
*   CIDOC CRM version 6.1. Février 2015 : [http://cidoc-crm.org/docs/cidoc\_crm\_version\_6.1.pdf](http://cidoc-crm.org/docs/cidoc_crm_version_6.1.pdf)
*   FRBRoo Version 1.0 2009 : [http://www.cidoc-crm.org/docs/frbr\_oo/frbr\_docs/FRBRoo\_V1.0\_2009\_june\_.pdf](http://www.cidoc-crm.org/docs/frbr_oo/frbr_docs/FRBRoo_V1.0_2009_june_.pdf)
*   FRBRoo Version 2.0 draft May 2013 : [http://www.cidoc-crm.org/docs/frbr\_oo//frbr\_docs/FRBRoo\_V2.0\_draft\_2013May.pdf](http://www.cidoc-crm.org/docs/frbr_oo//frbr_docs/FRBRoo_V2.0_draft_2013May.pdf)
*   FRBRoo 2.4 Novembre 2015 : [http://www.cidoc-crm.org/docs/frbr\_oo/frbr\_docs/FRBRoo\_V2.4.pdf](http://www.ifla.org/files/assets/cataloguing/frbr/frbroo_v2.2.pdf)
*   Livre Blanc - Le FRBR mis en oeuvre Juin 2014 : [http://www.decalog.net/sites/default/files/u1/livreblancfrbr.pdf](http://www.decalog.net/sites/default/files/u1/livreblancfrbr.pdf)
*   FRBR-LRM Février 2016 : [http://www.ifla.org/files/assets/cataloguing/frbr-lrm/frbr-lrm\_20160225.pdf](http://www.ifla.org/files/assets/cataloguing/frbr-lrm/frbr-lrm_20160225.pdf)
*   Shared Canvas Février 2013: [http://iiif.io/model/shared-canvas/1.0/](http://iiif.io/model/shared-canvas/1.0/)

### Bibliographie

#### Mappings

*   Øyvind Eide, _Guidelines for the creation of TEI documents that will map well to ontologies such as the CIDOC-CRM_ (2010). <[http://www.tei-c.org/SIG/Ontologies/guidelines/guidelinesTeiMappableCrm.xml](http://www.tei-c.org/SIG/Ontologies/guidelines/guidelinesTeiMappableCrm.xml)\>
*   Øyvind Eide, Christian-Emil Ore, _Mapping of TEI to CIDOC-CRM_ (2007). <[http://www.edd.uio.no/artiklar/tekstkoding/tei\_crm\_mapping.html](http://www.edd.uio.no/artiklar/tekstkoding/tei_crm_mapping.html)\>
*   Task Force EDM FRBRoo, _Final Report on EDM - FRBRoo Application Profile Task Force_ (2013). <[http://pro.europeana.eu/documents/468623/1760978/TaskfoApplication+Profile+EDM-FRBRoo](http://pro.europeana.eu/documents/468623/1760978/TaskfoApplication+Profile+EDM-FRBRoo)\>
*   Thomais Stasinopoulou, Martin Doerr, Christos Papatheodorou, Konstantia Kakali, _"EAD mapping to CIDOC/CRM" Technical Report, DELOS WP5-Task 5.5. "Ontology Driven Interoperability"_ (2007). <[http://www.cidoc-crm.org/docs/WP5-T5\_5-ead2crm-mapping-060728v0\_2-final.doc](http://www.cidoc-crm.org/docs/WP5-T5_5-ead2crm-mapping-060728v0_2-final.doc)\>
*   Maria Theodoridou, Martin Doerr, _EAD mapping to CIDOC-CRM_ (2001). <[http://ics.forth.gr/isl/publications/paperlink/ead.pdf](http://ics.forth.gr/isl/publications/paperlink/ead.pdf)\>
*   Irene Lourdi, Christos Papatheodorou, Martin Doerr, _Semantic Integration of Collection Description: Combining CIDOC/CRM and Dublin Core Collections Application Profile_ (2009) <[http://www.dlib.org/dlib/july09/papatheodorou/07papatheodorou.html](http://www.dlib.org/dlib/july09/papatheodorou/07papatheodorou.html)\>

#### Autres études

*   Patrick Le Boeuf_,_ "A Strange Model Named FRBRoo",_Cataloging & Classification Quarterly_ 50, 5-7 (2012), p. 422-438
*   Patrick Le Boeuf_,_ "Modeling rare and unique documents using FRBRoo and CIDOC-CRM", _Journal of Archival Organization_ 10, 2 (2012), p. 96-106
*   Guenther Goerz, Bernhard Schiemann, Martin Oischinger : _[An Implementation of the CIDOC CONCEPTUAL REFERENCE MODEL (4.2.4) in OWL-DL](http://wwwdh.cs.fau.de/IMMD8/staff/Goerz/crm_owl_cidoc2008.pdf)_ (2008)
*   Judith Merges, Martin Scholz, Guenther Goerz : _[Erlangen Implementation of FRBRoo](http://www.cidoc2012.fi/en/File/1612/merges.pdf)_ (2012)
*   Sofia Zapounidou, Michalis Sfakakis, Christos Papatheodorou : _[Highlights of library data models in the era of Linked Open Data](http://users.ionio.gr/~papatheodor/papers/mtsr2013-paper67-cr.pdf)_ (2013)
*   Patrick Le Boeuf : _[FRBRoo et PRESSoo - présentation rapide](http://library.ifla.org/1150/7/207-leboeuf-fr.pdf)_ (2015)

#### Publications Biblissima

*   Matthieu Bonicel, Stefanie Gehrke : _[Biblissima and Data Modelling in EuropeanaTech Insight 2](http://pro.europeana.eu/get-involved/europeana-tech/europeanatech-insight/insight-issue2-datamodelingdataquality#Article4)_ (2015)
*   Pauline Charbonnier, Eduard Frunzeanu, Stefanie Gehrke, Marie Muffat : _[Biblissima's Prototype on Medieval Manuscript Illuminations and their Context](http://ceur-ws.org/Vol-1364/paper5.pdf)_ (2015)
*   _Prototype "Initiale-Mandragore"_, basé sur deux bases de données iconographiques et en collaboration avec Logilab (2015).

#### Présentations Biblissima

*   _[Retour d'expérience Biblissima - L'utilisation de CIDOC CRM](https://doc.biblissima.fr/retour-dexperience-biblissima-lutilisation-de-cidoc-crm)_ (2014)
*   _[Biblissima et la modélisation de l'histoire de la transmission des textes et de la constitution des collections](https://doc.biblissima.fr/biblissima-et-la-modelisation-de-lhistoire-de-la-transmission-des-textes-et-de-la-constitution-des)_ (2014)
*   _[Biblissima et CIDOC CRM + FRBRoo](https://doc.biblissima.fr/biblissima-et-cidoc-crm-frbroo)_ (2014)
*   _[Biblissima and Data Modelling](https://doc.biblissima.fr/biblissima-and-data-modelling)_ Europeana Tech 2015 (2015)
*   _[Prototype on Illuminated Manuscripts and Future Steps of Data Integration](https://doc.biblissima.fr/prototype-illuminated-manuscripts-and-future-steps-metadata-integration)_ 33rd CIDOC SIG and FRBR - CIDOC CRM Harmonization Meeting, Nuremberg (2015)
