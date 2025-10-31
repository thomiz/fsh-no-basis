# no-basis-dnummer - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-dnummer**

## NamingSystem: no-basis-dnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/NamingSystem/no-basis-dnummer | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:Dnummer |

 
Personidentifikator for personer som ikke har fødselsnummer og som ikke skal registreres som bosatt i Norge. The D-nummer of the patient. (assigned by the norwegian Skatteetaten) 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/ig/NamingSystem/no-basis-dnummer |
| Version | 2.2.3-test |
| Name | Dnummer |
| Status | active |
| Definition | Personidentifikator for personer som ikke har fødselsnummer og som ikke skal registreres som bosatt i Norge. The D-nummer of the patient. (assigned by the norwegian Skatteetaten) |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/DNR
  * **Preferred**: false
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.4.2
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-dnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/ig/NamingSystem/no-basis-dnummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.3-test"
    }
  ],
  "name" : "Dnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Skatteetaten",
  "description" : "Personidentifikator for personer som ikke har fødselsnummer og som ikke skal registreres som bosatt i Norge. The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
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
      "value" : "http://hl7.no/fhir/NamingSystem/DNR",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.4.2",
      "preferred" : true
    }
  ]
}

```
