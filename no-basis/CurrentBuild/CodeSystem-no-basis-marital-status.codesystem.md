# no-basis-marital-status.codesystem - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-marital-status.codesystem**

## CodeSystem: no-basis-marital-status.codesystem 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/CodeSystem/no-basis-marital-status | *Version*:2.2.3-test |
| Active as of 2019-05-07 | *Computable Name*:NoBasisMaritalStatus |

 
Copy of Codes from Sivilstandstype defined by Skatteetaten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoBasisMaritalStatus](ValueSet-no-basis-marital-status.valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-basis-marital-status.codesystem",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-05-07T00:00:00+00:00"
  },
  "url" : "http://hl7.no/fhir/CodeSystem/no-basis-marital-status",
  "version" : "2.2.3-test",
  "name" : "NoBasisMaritalStatus",
  "title" : "no-basis-marital-status.codesystem",
  "status" : "active",
  "date" : "2019-05-07T00:00:00+00:00",
  "description" : "Copy of Codes from Sivilstandstype defined by Skatteetaten",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "NO",
          "display" : "Norway"
        }
      ]
    }
  ],
  "content" : "complete",
  "count" : 10,
  "concept" : [
    {
      "code" : "uoppgitt",
      "display" : "Uoppgitt",
      "definition" : "sivilstand er ikke stadfestet med godkjent grunnlag"
    },
    {
      "code" : "ugift",
      "display" : "Ugift",
      "definition" : "person som aldri har inngått ekteskap"
    },
    {
      "code" : "gift",
      "display" : "Gift",
      "definition" : "person som er i et ekteskap"
    },
    {
      "code" : "enkeEllerEnkemann",
      "display" : "Enke eller enkemann",
      "definition" : "gjenlevende person fra et ekteskap"
    },
    {
      "code" : "skilt",
      "display" : "Skilt",
      "definition" : "person som er lovlig skilt fra tidligere ektefelle"
    },
    {
      "code" : "separert",
      "display" : "Separert",
      "definition" : "person som er i en separasjonsperiode fra sin ektefelle"
    },
    {
      "code" : "registrertPartner",
      "display" : "Registrert partner",
      "definition" : "person som er i et partnerskap iht partnerskapsloven"
    },
    {
      "code" : "separertPartner",
      "display" : "Separert partner",
      "definition" : "person som er i en separasjonsperiode fra sin partner"
    },
    {
      "code" : "skiltPartner",
      "display" : "Skilt partner",
      "definition" : "person som er lovlig skilt fra tidligere partner"
    },
    {
      "code" : "gjenlevende_partner",
      "display" : "Gjenlevende partner",
      "definition" : "gjenlevende person fra et partnerskap"
    }
  ]
}

```
