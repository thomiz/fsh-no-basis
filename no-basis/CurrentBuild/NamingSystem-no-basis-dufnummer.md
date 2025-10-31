# no-basis-dufnummer - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-dufnummer**

## NamingSystem: no-basis-dufnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/NamingSystem/no-basis-dufnummer | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:DUFnummer |

 
Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/ig/NamingSystem/no-basis-dufnummer |
| Version | 2.2.3-test |
| Name | DUFnummer |
| Status | active |
| Definition | Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/DUFN
  * **Preferred**: false
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.4.5
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-dufnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/ig/NamingSystem/no-basis-dufnummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.3-test"
    }
  ],
  "name" : "DUFnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Utlendingsdirektoratet",
  "description" : "Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. ",
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
  "uniqueId" : [
    {
      "type" : "uri",
      "value" : "http://hl7.no/fhir/NamingSystem/DUFN",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.4.5",
      "preferred" : true
    }
  ]
}

```
