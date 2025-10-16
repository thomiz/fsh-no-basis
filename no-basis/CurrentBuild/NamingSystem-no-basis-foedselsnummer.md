# no-basis-foedselsnummer - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-foedselsnummer**

## NamingSystem: no-basis-foedselsnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-foedselsnummer | *Version*:2.2.2-test |
| Active as of 2018-08-13 | *Computable Name*:Foedselsnummer |

 
Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits. 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/NamingSystem/no-basis-foedselsnummer |
| Version | 2.2.2-test |
| Name | Foedselsnummer |
| Status | active |
| Definition | Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/FNR
  * **Preferred**: false
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.4.1
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-foedselsnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/NamingSystem/no-basis-foedselsnummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.2-test"
    }
  ],
  "name" : "Foedselsnummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-08-13",
  "responsible" : "Skatteetaten",
  "description" : "Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits.",
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
      "value" : "http://hl7.no/fhir/NamingSystem/FNR",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.4.1",
      "preferred" : true
    }
  ]
}

```
