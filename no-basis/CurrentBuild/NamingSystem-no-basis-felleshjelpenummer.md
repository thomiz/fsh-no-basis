# no-basis-felleshjelpenummer - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-felleshjelpenummer**

## NamingSystem: no-basis-felleshjelpenummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/NamingSystem/no-basis-felleshjelpenummer | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:FellesHjelpenummer |

 
Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown. 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/ig/NamingSystem/no-basis-felleshjelpenummer |
| Version | 2.2.3-test |
| Name | FellesHjelpenummer |
| Status | active |
| Definition | Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/FHNR
  * **Preferred**: false
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.4.3
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-felleshjelpenummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/ig/NamingSystem/no-basis-felleshjelpenummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.3-test"
    }
  ],
  "name" : "FellesHjelpenummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Norsk helsenett",
  "description" : "Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown.",
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
      "value" : "http://hl7.no/fhir/NamingSystem/FHNR",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.4.3",
      "preferred" : true
    }
  ]
}

```
