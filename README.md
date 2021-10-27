# FSH ressurser for no-basis

## Plan

* OK, Skrive resten av ressursene i fsh format, validere og generer IG
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

* Sette opp Github workflow
* Teste ut bruk av maturity level på artefaktene
  * [FMM extension](http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm)
  * La inn maturitylevel i NoBasisHumanNam
  ~~~xml
  * ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
  * ^extension.valueInteger = 1
  ~~~
* Egen gh-pages branch som bare inneholder resultatet av byggeprosessen fra IG-publisher
  * hvordan styre hvor IG-publisher legger resultatet?
  * Sørge for at IG-publisher resultatene blir lagt i egen katalog og dette blir lagt i gh-pages branchen
  * Hvor er pakkene fra IG-publisher, genereres det pakker?
    * Ja, disse legges i hovedkatalogen
* OK, Hvordan ta vare på versjoner av IG-ene som publisher genererer?
  * versjonskontroll med IG-publisher
  * Ta vare på zip av gamle IG's
* OK, Undersøke hvorfor nye Docker images ikke fungerer og hvorfor docker build ikke fungerer
  * Feil i docker-entrypoint fila (linux må ha LF linjeskift)
* OK, Legge om til å bruke FHIR template for no-basis
  * [HL7 IG templates](https://build.fhir.org/ig/FHIR/ig-guidance/index.html#templates)

2021-10-27 - La inn Procedure og eksempel
2021-10-03 - La til resten av profilene fikset canonical slik at den sammenfaller med definert for no-basis http://hl7.no/fhir  
2021-10-02 - Endret på menyen og lag til Datatyper og figurer  
2021-10-01 - La til Endpoint, HealthcareService og Location   
2021-09-30 - La til noen flere eksempler, problemer med narrative generation fra fsh filene, noe er galt med extension definisjonenen i eksemplene  
2021-09-30 - forsøkte med XML instans eksempel NoBasisOrganization, ble ikke med  
2021-09-30 - Feilretting i NoBasisPractitioner.fsh  
2021-09-29 - Et par nye ressurser, og lagt til ny template, husk template hentes fra github så bare endringer derfra blir med i bygget...  
2021-09-28 - Bug i docker-entrypoint.sh noe så dumt som linjeskift (skal være LF i linux men er CRLF i Windows VSCode)   
2021-09-27 - Ny versjon med sourceofinformation og RelatedPersonPersonReference  
2021-09-27 - Opprettet gh-pages som egen branch, inneholder bare output fra build prosessen, index.html må eksistere for github pages skal fungere  
2021-09-26 - Fikk generert IG med egen no-basis-index.html (basert på md fil fra SIMPLIFIER)  
2021-09-25 - fikk generert IG, men mye arbeid å gjøre før dette går smuud, Måtte bruke det gamle docker imaget fra Tidlig september.  
2021-09-25 - fixet feil i middlename, propertyinformation og person  
2021-09-25 - Problemer med tasks og Docker, forsøker update av docker, hjelper ikke, får ikke bygget nytt fugnerende image men det gamle fungerer  
2021-09-25 - NoBasis-Patient.fsh - Ny kodelinje for extension (citizenship ser ut til å fungere)  
2021-09-25 - Får ikke vscode/tasks til å fungere, men docker image fra kommandolinje fungerer  

## Når .vscode tasks ikke fungerer

Bygge nygg docker image:

~~~bash
docker build -t thomiz/fhir-build-image .
~~~

Kommandolinje for å kjøre IG-publisher for fsh-no-basis:

~~~bash
docker --debug run -it --rm -v package-cache:/root/.fhir -v e:\GitRepo\fsh-no-basis\master\no-basis:/data thomiz/fhir-build publisher -ig /data/ig.ini
~~~

Liste images:

~~~bash
docker image ls
~~~

Slette hengende image:

~~~bash
docker image rm 2f47c3bf6b47 -f  
~~~
