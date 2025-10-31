# no-basis-family-relation.codesystem - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-family-relation.codesystem**

## CodeSystem: no-basis-family-relation.codesystem 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/CodeSystem/no-basis-family-relation | *Version*:2.2.3-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisFamilyRelation |

 
Copy of Codes from Familierelasjon defined by Skatteetaten 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoBasisFamilyRelation](ValueSet-no-basis-family-relation.valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-basis-family-relation.codesystem",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-05-07T00:00:00+00:00"
  },
  "url" : "http://hl7.no/fhir/CodeSystem/no-basis-family-relation",
  "version" : "2.2.3-test",
  "name" : "NoBasisFamilyRelation",
  "title" : "no-basis-family-relation.codesystem",
  "status" : "active",
  "date" : "2019-05-15T00:00:00+00:00",
  "description" : "Copy of Codes from Familierelasjon defined by Skatteetaten",
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
  "count" : 7,
  "concept" : [
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
      "code" : "barn",
      "display" : "Barn"
    },
    {
      "code" : "søsken",
      "display" : "Søsken"
    },
    {
      "code" : "ektefelleEllerPartner",
      "display" : "Ektefelle eller partner"
    },
    {
      "code" : "dødfødtBarn",
      "display" : "Dødfødt barn"
    }
  ]
}

```
