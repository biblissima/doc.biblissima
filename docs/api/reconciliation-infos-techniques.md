Cette section présente les différents **endpoints** de l'API de réconciliation de données, de même que les **paramètres** utilisables pour chacun d'eux. 

Elle s'adresse à ceux qui souhaiteraient interroger l'API de réconciliation indépendamment de l'interface graphique d'un client compatible (OpenRefine par exemple), ou qui ont pour projet de développer un outil visant à tirer parti de ses fonctionnalités.

Le service de réconciliation de données est conforme à la **version 0.1** de l’API de réconciliation (voir la [documentation de la version 0.1](https://www.w3.org/community/reports/reconciliation/CG-FINAL-specs-0.1-20230321/)), actuellement [en cours de standardisation au W3C](https://reconciliation-api.github.io/specs/draft/). 

Il peut être branché sur le logiciel [OpenRefine](https://openrefine.org/) (voir la section [Réconcilier ses données avec OpenRefine](/api/openrefine)), et sur une diversité d'autres clients (voir [cette liste](https://reconciliation-api.github.io/census/clients/)), en particulier l'outil de publication d'éditions numériques [TEI Publisher](https://teipublisher.com/exist/apps/tei-publisher-home/index.html) (voir [la documentation](https://teipublisher.com/exist/apps/tei-publisher/documentation/connector-reconciliation#) de TEI Publisher). 

## Endpoints

### Service Reconciliation

Il s’agit du service de **réconciliation** en tant que tel. En réponse à une requête, il renvoie une liste de propositions, avec un score permettant d’évaluer chaque résultat. Le score le plus élevé est `100`. Il est possible d’adresser au service une requête unique, ou un ensemble de requêtes (query batch).

#### Endpoint

- Français : [https://data.biblissima.fr/reconcile/fr/api](https://data.biblissima.fr/reconcile/fr/api) 
- Anglais : [https://data.biblissima.fr/reconcile/en/api](https://data.biblissima.fr/reconcile/en/api) 

Le choix de la langue se répercute sur l’affichage des paramètres saisis dans la requête et repris dans la réponse, mais n’a pas de conséquences sur les propositions renvoyées par l’API. Le nom du paramètre [Q168](https://data.biblissima.fr/entity/Q168) sera ainsi affiché en tant qu’« être humain » en français, et en tant que « human » en anglais.

#### Paramètres disponibles

- `query` : a pour valeur la chaîne de caractères que l’on cherche à réconcilier. Obligatoire.
- `type` : a pour valeur le ou les types auxquels doivent correspondre les entités proposées. Optionnel.
- `limit` : a pour valeur le nombre maximum de résultats à renvoyer. Optionnel.
- `properties` : permet de définir un ou des couples « identifiant de propriété (champ `pid`) / valeur de propriété (champ `v`) » afin d’affiner les résultats en vérifiant non seulement la correspondance avec le paramètre `query`, mais également la valeur des propriétés. Optionnel.

Les requêtes multiples sont contenues dans un "query batch", prenant la forme d’un ensemble de `queries` indexées par un identifiant. La syntaxe à utiliser est alors la suivante : 

``` bash
https://data.biblissima.fr/reconcile/fr/api?queries={"id1": {"query": "entité1"},"id2": {"query": "entité2"}}.
```

#### Exemples

!!! example "Exemple 1"
	[https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"isidorus hispalensis"}}](https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"isidorus hispalensis"}})

Cette requête minimale, sans paramètres optionnels, renvoie une liste de propositions pour le terme « Isidorus Hispalensis ». Puisqu’il s’agit d’une requête unique, il est également possible d’utiliser la syntaxe simplifiée [https://data.biblissima.fr/reconcile/fr/api?query=isidorus+hispalensis](https://data.biblissima.fr/reconcile/fr/api?query=isidorus+hispalensis). La réponse, au-delà de sa simple mise en forme, sera identique.


!!! example "Exemple 2"
	[https://data.biblissima.fr/reconcile/fr/api?queries={"q0": {"query": "Isidorus Hispalensis","type": "Q168","limit": 5,"properties": [{"pid": "P57","v": "560"}]},"q1": {"query": "Gregorius Magnus","type": "Q168","limit": 5,"properties": [{"pid": "P57","v": "540"}]}}](https://data.biblissima.fr/reconcile/fr/api?queries={"q0": {"query": "Isidorus Hispalensis","type": "Q168","limit": 5,"properties": [{"pid": "P57","v": "560"}]},"q1": {"query": "Gregorius Magnus","type": "Q168","limit": 5,"properties": [{"pid": "P57","v": "540"}]}})


Cette requête multiple, avec paramètres optionnels, renvoie une liste de cinq propositions maximum pour, respectivement, le terme « Isidorus Hispalensis » et le terme « Gregorius Magnus », en restreignant les résultats aux entités de type « être humain » ([Q168](https://data.biblissima.fr/entity/Q168)), et en prenant en compte la valeur de la propriété « date de naissance » ([P57](https://data.biblissima.fr/entity/P57)) pour le calcul du score.

!!! example "Exemple 3"
	[https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"Couvent des Grands-Augustins ","properties":[{"pid":"P112","v":"Q3001716"}]}}](https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"Couvent des Grands-Augustins ","properties":[{"pid":"P112","v":"Q3001716"}]}})

Cette requête unique renvoie une liste de propositions pour le terme « Couvent des Grands-Augustins », en prenant en compte la valeur de la propriété « identifiant Wikidata » ([P112](https://data.biblissima.fr/entity/P112)) pour le calcul du score.

!!! example "Exemple 4"
	[https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"MILANO, Biblioteca Ambrosiana, H 106 sup.","properties":[{"pid":"P140","v":"manuscrit/35463"}]}}](https://data.biblissima.fr/reconcile/fr/api?queries={"q0":{"query":"MILANO, Biblioteca Ambrosiana, H 106 sup.","properties":[{"pid":"P140","v":"manuscrit/35463"}]}}) 

Cette requête renvoie une liste de propositions pour le terme « MILANO, Biblioteca Ambrosiana, H 106 sup. », en prenant en compte la valeur de la propriété « identifiant Jonas » ([P140](https://data.biblissima.fr/entity/P140)) pour le calcul du score.

***

### Service Preview

Ce service permet d’obtenir l’**aperçu d’une entité** en récupérant des métadonnées (logo Biblissima, intitulé de l’entité, identifiant), qui seront affichées sous la forme de contenu HTML.

#### Endpoint

- [https://data.biblissima.fr/reconcile/fr/preview](https://data.biblissima.fr/reconcile/fr/preview)

#### Paramètre disponible

- `id` : a pour valeur l’identifiant de l’entité dont on souhaite obtenir un aperçu. Obligatoire.

#### Exemple

!!! example "Exemple 5"
	[https://data.biblissima.fr/reconcile/fr/preview?id=Q199](https://data.biblissima.fr/reconcile/fr/preview?id=Q199)

Cette requête renverra la réponse suivante :

<figure markdown>
  ![Réponse requête preview](../assets/service_preview.png)
</figure>

***

### Services Suggest

Ces services permettent de bénéficier de **fonctionnalités d’autocomplétion**. Ils facilitent par exemple la sélection manuelle d’une entité, d’une propriété ou d’un type lorsqu'un utilisateur cherche à saisir l'un d'eux au sein d'un champ dans un client comme OpenRefine ou autre. 

#### Endpoints

- Pour les entités : [https://data.biblissima.fr/reconcile/fr/suggest/entity](https://data.biblissima.fr/reconcile/fr/suggest/entity)
- Pour les propriétés : [https://data.biblissima.fr/reconcile/fr/suggest/property](https://data.biblissima.fr/reconcile/fr/suggest/property) 
- Pour les types : [https://data.biblissima.fr/reconcile/fr/suggest/type](https://data.biblissima.fr/reconcile/fr/suggest/type) 

#### Paramètres disponibles

- `prefix` : a pour valeur la chaîne de caractères pour laquelle l’API doit renvoyer des suggestions. Obligatoire.

#### Exemple

!!! example "Exemple 6"
	[https://data.biblissima.fr/reconcile/fr/suggest/property?prefix=date](https://data.biblissima.fr/reconcile/fr/suggest/property?prefix=date)

Cette requête permet d'obtenir des suggestions de propriétés à partir de la chaîne de caractères « date ».

***

### Service Data Extension

Ce service permet de récupérer la ou les **valeurs d’une ou plusieurs propriétés** données pour une ou plusieurs entités. Ce service est utile pour **enrichir les données sources**.

#### Paramètres

- `ids` : a pour valeur l’identifiant de(s) entité(s) pour lesquelles on souhaite récupérer la valeur d’une ou de plusieurs propriétés. Obligatoire.
- `properties` : permet de définir la ou les propriétés dont on souhaite récupérer la valeur. Ce paramètre peut contenir les sous-paramètres suivants :
	* `id` : identifiant de la propriété. Obligatoire.
	* `limit` : a pour valeur le nombre maximum de résultats à renvoyer. Optionnel.

#### Exemple

!!! example "Exemple 7"
	[https://data.biblissima.fr/reconcile/fr/api?extend={"ids":["Q27392"],"properties":[{"id":"P109"}]}](https://data.biblissima.fr/reconcile/fr/api?extend={"ids":["Q27392"],"properties":[{"id":"P109"}]})

Cette requête permet de récupérer une liste de valeurs pour la propriété « identifiant Bibliothèque nationale de France » ([P109](https://data.biblissima.fr/entity/P109)) pour l’entité « Paris (France) » ([Q27392](https://data.biblissima.fr/entity/Q27392)).

***

!!! info "Pour approfondir"

	Pour plus de détails sur les différents endpoints et le fonctionnement de l’API de réconciliation, se référer à [la documentation officielle du W3C](https://www.w3.org/community/reports/reconciliation/CG-FINAL-specs-0.1-20230321).
