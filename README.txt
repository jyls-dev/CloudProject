# webandcloud

**Be sure your maven has access to the web**
* you should have file ~/.m2/settings.xml
* otherwise cp ~molli-p/.m2/settings.xml ~/.m2/

```
molli-p@remote:~/.m2$ cat settings.xml
<settings>
 <proxies>
 <proxy>
      <active>true</active>
      <protocol>https</protocol>
      <host>proxy.ensinfo.sciences.univ-nantes.prive</host>
      <port>3128</port>
    </proxy>
  </proxies>
</settings>
```

## import and run in eclipse
* install the code in your home:
```
 cd ~
 git clone https://github.com/momo54/webandcloud.git
 cd webandcloud
 mvn install
```
* Change "sobike44" with your google project ID in pom.xml
* Change "sobike44" with your google project ID in src/main/webapp/WEB-INF/appengine-web.xml

## Run in eclipse

* start an eclipse with gcloud plugin
```
 /media/Enseignant/eclipse/eclipse
 or ~molli-p/eclipse/eclipse
 ```
* import the maven project in eclipse
 * File/import/maven/existing maven project
 * browse to ~/webandcloud
 * select pom.xml
 * Finish and wait
 * Ready to deploy and run...
 ```
 gcloud app create error...
 ```
 Go to google cloud shell console (icon near your head in google console)
 ```
 gcloud app create
 ```


## Install and Run 
* (gcloud SDK must be installed first. see https://cloud.google.com/sdk/install)
* git clone https://github.com/momo54/webandcloud.git
* cd webandcloud
* running local (http://localhost:8080):
```
mvn appengine:run
```
* Deploying at Google (need gcloud configuration, see error message -> tell you what to do... 
)
```
mvn appengine:deploy
gcloud app browse
```

# Access REST API
* (worked before) 
```
https://<yourapp>.appstpot.com/_ah/api/explorer
```
* New version of endpoints (see https://cloud.google.com/endpoints/docs/frameworks/java/adding-api-management?hl=fr):
```
mvn clean package
mvn endpoints-framework:openApiDocs
gcloud endpoints services deploy target/openapi-docs/openapi.json 
mvn appengine:deploy
```

# Webandcloud
Réalisation d'une application web dont les fonctionnalités sont similaires au réseau sociaux, comme par exemple Instagram.

## Debut
Les conditions d'installation du projet concernent simplement l'enregistrement du projet de manière local sur le poste.
Télécharger le fichier zip (dans le cas présent, le fichier s'intitule "CloudTinyGram"), puis le dézipper dans le dossier comme indiqué ci-dessous :
```
C:\Users\adem\Documents\GitHub\CloudTinyGram
```

## Conditions préalables
Il faut au préalable avoir installer éclipse et s'assurer que Maven a accès au web. 
Et notamment s'offir un compte Google Cloud. 

## L'installation
Une fois le projet enregistré en local, il faudra lancer eclipse et suivre les instructions suivantes afin de déployer le projet :
- il est possible de le déployer comme ceci :
```
Clique droit sur le projet, ensuite faire
Deploy to App Engine standard
```
- il est éventuellement possible de le déployer de manière local :
```
Clique droit sur le projet, ensuite faire
Run As > App Engine
```

## Exécution des tests
Les tests s'effectuent de façon manuels. 
Une fois le projet déployé, il convient de se connecter avec Google. 
L'utilisateur est alors dirigé vers sa page de profil.

## Déploiement
Le déploiement s'effectue sur le navigateur. 

## Base de données
L'ensemble des données sont administrés par Google Cloud Platform. Il est donc possible d'accéder aux divers contenues.
```
Menu de navigation > Datastore > Entités
```

## Construit avec
* [Maven] (https://maven.apache.org/) - Gestion des dépendance
* [Eclipse] (https://www.eclipse.org/) - Environnement de production de logiciels libres
* [Google Cloud Platform] (https://console.cloud.google.com/) - hébergement de sites et d'application

## Versioning
Nous utilisons Github pour le versioning. 

## Auteurs
* Rémi Remaud - développeur
* François Chauveau - développeur
* Jules Vannini - développeur
* David Oztoprak - développeur

## Licence
Pas de licence spécifique pour ce projet.

## Remerciements 
* Toute les personnes qui ont participé à la conception de ce projet
* Pascal Molli 