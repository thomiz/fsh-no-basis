# no-basis-helsepersonellnummer - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-helsepersonellnummer**

## NamingSystem: no-basis-helsepersonellnummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/NamingSystem/no-basis-helsepersonellnummer | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:HelsepersonellregisteretNummer |

 
In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification. 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/ig/NamingSystem/no-basis-helsepersonellnummer |
| Version | 2.2.3-test |
| Name | HelsepersonellregisteretNummer |
| Status | active |
| Definition | In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/HPR
  * **Preferred**: false
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.4.4
  * **Preferred**: true



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-helsepersonellnummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/ig/NamingSystem/no-basis-helsepersonellnummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.3-test"
    }
  ],
  "name" : "HelsepersonellregisteretNummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Helsedirektoratet",
  "description" : "In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification.",
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
      "value" : "http://hl7.no/fhir/NamingSystem/HPR",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.4.4",
      "preferred" : true
    }
  ]
}

```
