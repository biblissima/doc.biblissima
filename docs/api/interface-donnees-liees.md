 Chaque entité ou propriété au sein de la plateforme [data.biblissima.fr](https://data.biblissima.fr) est identifiée dans le Web de données par une URI construite sous la forme suivante :

```
https://data.biblissima.fr/entity/Q{id}
```

Exemple : [https://data.biblissima.fr/entity/Q2785](https://data.biblissima.fr/entity/Q2785)

Les données brutes d’une entité individuelle sont disponibles au format JSON et dans différentes sérialisations de RDF : RDF/XML, N-Triples, Turtle et N3.

Elles sont accessibles de deux façons :

1. par le mécanisme de [négociation de contenu](https://developer.mozilla.org/fr/docs/Web/HTTP/Content_negotiation)
2. par l'URL `Special:EntityData`, en suffixant l'extension correspondant au format souhaité (.json, .rdf, .ttl ou .nt) :

``` 
https://data.biblissima.fr/w/Spécial:EntityData/Q{id}.extension
```

Exemple : [https://data.biblissima.fr/w/Spécial:EntityData/Q2785.json](https://data.biblissima.fr/w/Spécial:EntityData/Q2785.json)

Lire plus d’informations sur la page [Accès aux données](https://www.wikidata.org/wiki/Wikidata:Data_access/fr#Linked_Data_Interface_(URI)) de Wikidata.
