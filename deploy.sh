#!/bin/bash

# SSH_CC = variable d'environement contenant la commande ssh complète (dont l'adresse du proxy ssh, le port etc.)

EXCLUDE=~/rsync_exclude.txt
ENV=$1
SOURCE=site/

# dev (cc-web-dev)
if [ "$ENV" == "dev" ]; then
  REMOTE="biblissima-web-dev"
  DEST="/var/www/html_gitlab/doc-dev.biblissima"
# prod (cc-web)
elif [ "$ENV" == "prod" ] ; then 
 echo "NOTICE: la variable de configuration 'extra.analytics.provider' est-elle activée dans mkdocs.yml ?"
 read -p "Confirmer ? [y/n]" -n 1 -r -s
 echo #
 if [[ $REPLY =~ ^[Yy]$ ]]
 then
   REMOTE="biblissima-web-PROD"
   DEST="/var/www/html/doc.biblissima.fr"
 fi
else
  echo "WARNING: l'environnement doit être passé en argument ! (valeur : dev ou prod)"
fi

if [ ! -z "$REMOTE" ] && [ ! -z "$SSH_CC" ]
then
  rsync -rlptzv --exclude-from="$EXCLUDE" -e "$SSH_CC $REMOTE" "$SOURCE" :"$DEST"
fi
