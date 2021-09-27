# FSH ressurser for no-basis

## Plan

* Skrive resten av ressursene i fsh format, validere og generer IG
* Ta inn markdown fra SIMPLIFIER til ig-publisher
  * Sørge for at markdown filene blir med i generert IG
  * egne md/html sider med dokumentasjonen legges i input/pages eller input/pagecontent katalog før man kjører igpublisher/sushi
  * sushi-config.yaml må nevne sidene

~~~ yaml
  menu:
  Home: index.html
  Artifacts: artifacts.html
  History: CHANGELOG.html
~~~

* Egen gh-pages branch som bare inneholder resultatet av byggeprosessen fra IG-publisher
  * hvordan styre hvor IG-publisher legger resultatet?
  * Sørge for at IG-publisher resultatene blir lagt i egen katalog og dette blir lagt i gh-pages branchen
  * Hvor er pakkene fra IG-publisher, genereres det pakker
    * Ja, disse legges i hovedkatalogen
* Hvordan ta vare på versjoner av IG-ene som publisher genererer?
  * versjonskontroll med IG-publisher
* Undersøke hvorfor nye Docker images ikke fungerer og hvorfor docker build ikke fungerer

2021-09-27 - Ny versjon med sourceofinformation og RelatedPersonPersonReference
2021-09-27 - Opprettet gh-pages som egen branch, inneholder bare output fra build prosessen, index.html må eksistere for github pages skal fungere
2021-09-26 - Fikk generert IG med egen no-basis-index.html (basert på md fil fra SIMPLIFIER)
2021-09-25 - fikk generert IG, men mye arbeid å gjøre før dette går smuud, Måtte bruke det gamle docker imaget fra Tidlig september.  
2021-09-25 - fixet feil i middlename, propertyinformation og person  
2021-09-25 - Problemer med tasks og Docker, forsøker update av docker, hjelper ikke, får ikke bygget nytt fugnerende image men det gamle fungerer  
2021-09-25 - NoBasis-Patient.fsh - Ny kodelinje for extension (citizenship ser ut til å fungere)  
2021-09-25 - Får ikke vscode/tasks til å fungere, men docker image fra kommandolinje fungerer  

## Når .vscod tasks ikke fungerer

Kommandolinje for å kjøre IG-publisher for fsh-no-basis

~~~bash
docker --debug run -it --rm -v package-cache:/root/.fhir -v e:\GitRepo\fsh-no-basis\master\no-basis:/data thomiz/build-pipeline publisher -ig /data/ig.ini
~~~

Liste images
~~~bash
docker image ls
~~~

Slette hengende image
~~~bash
docker image rm fb2356268a8d -f  
~~~