# NoBasisICPC2 - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NoBasisICPC2**

## NamingSystem: NoBasisICPC2 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/NamingSystem/no-basis-icpc-2 | *Version*:2.2.2-test |
| Active as of 2021-11-02 | *Computable Name*:NoBasisICPC2 |

 
In Norway primary care uses ICPC-2 to document contact-reason, health related problem and diagnosis. 

version: 2.1.1

### Summary

| | |
| :--- | :--- |
| Defining URL | http://hl7.no/fhir/NamingSystem/no-basis-icpc-2 |
| Version | 2.2.2-test |
| Name | NoBasisICPC2 |
| Status | active |
| Definition | In Norway primary care uses ICPC-2 to document contact-reason, health related problem and diagnosis. |

### Identifiers

* **Type**: URI
  * **Value**: http://hl7.org/fhir/sid/icpc-2
  * **Preferred**: true
  * **Comment**: 
* **Type**: OID
  * **Value**: 2.16.840.1.113883.6.139
  * **Preferred**: false
  * **Comment**: 
* **Type**: OID
  * **Value**: 2.16.578.1.12.4.1.1.7170
  * **Preferred**: false
  * **Comment**: Volven oid for ICPC-2 codesystem for use in Norwegian legacy implementations.



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "no-basis-icpc-2",
  "meta" : {
    "versionId" : "2.1.1"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://hl7.no/fhir/NamingSystem/no-basis-icpc-2"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "2.2.2-test"
    }
  ],
  "name" : "NoBasisICPC2",
  "status" : "active",
  "kind" : "codesystem",
  "date" : "2021-11-02",
  "responsible" : "Wonca International Classification Committee (WICC)",
  "description" : "In Norway primary care uses ICPC-2 to document contact-reason, health related problem and diagnosis.",
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
      "value" : "http://hl7.org/fhir/sid/icpc-2",
      "preferred" : true
    },
    {
      "type" : "oid",
      "value" : "2.16.840.1.113883.6.139",
      "preferred" : false
    },
    {
      "type" : "oid",
      "value" : "2.16.578.1.12.4.1.1.7170",
      "preferred" : false,
      "comment" : "Volven oid for ICPC-2 codesystem for use in Norwegian legacy implementations."
    }
  ]
}

```
