# no-basis-kommunenummer - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-kommunenummer**

## NamingSystem: no-basis-kommunenummer 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/NamingSystem/no-basis-kommunenummer | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:Kommunenummer |

 
Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. 

version: 1.0

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/ig/NamingSystem/no-basis-kommunenummer |
| Version | 2.2.3-test |
| Name | Kommunenummer |
| Status | active |
| Definition | Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.no/fhir/NamingSystem/kommunenummer
  * **Preferred**: false
* **Type**: URI
  * **Value**: https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle
  * **Preferred**: true
* **Type**: URI
  * **Value**: urn:oid:2.16.578.1.12.4.1.1.3402
  * **Preferred**: false



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-kommunenummer",
  "meta" : {
    "versionId" : "1.0"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/ig/NamingSystem/no-basis-kommunenummer"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.3-test"
    }
  ],
  "name" : "Kommunenummer",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2018-10-26",
  "responsible" : "Statistisk sentralbyrå",
  "description" : "Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer.",
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
      "value" : "http://hl7.no/fhir/NamingSystem/kommunenummer",
      "preferred" : false
    },
    {
      "type" : "uri",
      "value" : "https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle",
      "preferred" : true
    },
    {
      "type" : "uri",
      "value" : "urn:oid:2.16.578.1.12.4.1.1.3402",
      "preferred" : false
    }
  ]
}

```
