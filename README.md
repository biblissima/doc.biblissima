# Documentation de Biblissima+

Ce site rassemble la documentation technique de l'infrastructure numérique de [Biblissima+](https://projet.biblissima.fr) (2021-2029), _Observatoire des cultures écrites anciennes de l’argile à l’imprimé_ (ANR-21-ESRE-0005).

Il est créé et maintenu par [l’équipe Portail Biblissima+](https://projet.biblissima.fr/fr/organisation/equipe-biblissima).

Il s'appuie sur :

- [MkDocs](https://www.mkdocs.org), un générateur de site statique spécialisé pour de la documentation
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/), un thème complet pour MkDocs


## Usage

### Pré-requis

- [Python](https://www.python.org)
- [pip](https://pip.readthedocs.io/en/stable/installing/)

### Installation

Récupérer le code source :

```
$ git clone https://gitlab.huma-num.fr/biblissima/doc.biblissima.git
```

Installer les dépendances :

```
$ cd doc.biblissima
$ pip install -r requirements.txt
```

### Utilisation

Travailler sur le site en local :

```
// Lance un serveur local avec rafraîchissement automatique sur http://127.0.0.1:8000/
$ mkdocs serve

// Génère le site dans le répertoire "site/"
$ mkdocs build

// Affiche le message d'aide
$ mkdocs -h
```

### Configuration

La configuration du projet est écrite en YAML dans `mkdocs.yml`.

Ce fichier contient notamment l'arborescence du menu de navigation dans la section `nav`.

### Déploiement

Pour déployer le site sur le serveur de développement ou de production :

```
// cc-web-dev
$ ./deploy.sh dev

// cc-web
$ ./deploy.sh prod
```

## Documentation

- MkDocs :
    - [Installation](https://www.mkdocs.org/user-guide/installation/)
    - [Configuration](https://www.mkdocs.org/user-guide/configuration/)
    - [Writing your docs](https://www.mkdocs.org/user-guide/writing-your-docs/)

- Material for MkDocs :
    - [Getting Started](https://squidfunk.github.io/mkdocs-material/getting-started/)
    - [Reference](https://squidfunk.github.io/mkdocs-material/reference/)

- Markdown : [Markdown: Syntax](https://daringfireball.net/projects/markdown/syntax)


## LICENCE

Sauf mention contraire, les contenus de ce site sont publiés sous [Licence Ouverte / Open License 2.0](https://www.etalab.gouv.fr/licence-ouverte-open-licence/).
