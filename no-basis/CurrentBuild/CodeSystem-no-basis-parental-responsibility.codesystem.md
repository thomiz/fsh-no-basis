# no-basis-parental-responsibility.codesystem - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-parental-responsibility.codesystem**

## CodeSystem: no-basis-parental-responsibility.codesystem 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility | *Version*:2.2.2-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisParentalResponsibility |

 
Copy of Codes from Foreldreansvar defined by Skatteetaten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoBasisParentalResponsibility](ValueSet-no-basis-parental-responsibility.valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-basis-parental-responsibility.codesystem",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-05-07T00:00:00+00:00"
  },
  "url" : "http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility",
  "version" : "2.2.2-test",
  "name" : "NoBasisParentalResponsibility",
  "title" : "no-basis-parental-responsibility.codesystem",
  "status" : "active",
  "date" : "2019-05-15T00:00:00+00:00",
  "description" : "Copy of Codes from Foreldreansvar defined by Skatteetaten",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "felles",
      "display" : "Felles"
    },
    {
      "code" : "mor",
      "display" : "Mor"
    },
    {
      "code" : "far",
      "display" : "Far"
    },
    {
      "code" : "medmor",
      "display" : "Medmor"
    },
    {
      "code" : "andre",
      "display" : "Andre"
    },
    {
      "code" : "ukjent",
      "display" : "Ukjent"
    }
  ]
}

```
