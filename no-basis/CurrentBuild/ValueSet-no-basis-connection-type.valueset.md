# no-basis-connection-type.valueset - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-connection-type.valueset**

## ValueSet: no-basis-connection-type.valueset (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/no-basis-connection-type | *Version*:2.2.3-test |
| Active as of 2019-03-13 | *Computable Name*:NoBasisConnectionType |

 
ValueSet for connection types used in Endpoint definition. Includes all Norwegian specific types (no-basis-connection-type) and the extensible HL7 CodeSystem for connection-type 

 **References** 

* [no-basis-Endpoint](StructureDefinition-no-basis-Endpoint.md)

### Logical Definition (CLD)

version: 1; Last updated: 2018-10-16 10:48:46+0000

This value set includes codes based on the following rules:

* Include all codes defined in [`http://hl7.no/fhir/CodeSystem/no-basis-connection-type`](CodeSystem-no-basis-connection-type.codesystem.md)version 📦2.2.3-test
* Include all codes defined in [`http://terminology.hl7.org/CodeSystem/endpoint-connection-type`](http://terminology.hl7.org/6.5.0/CodeSystem-endpoint-connection-type.html)version 📦2.1.1

 

### Expansion

This value set contains 17 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "no-basis-connection-type.valueset",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-10-16T10:48:46.366+00:00"
  },
  "url" : "http://hl7.no/fhir/ValueSet/no-basis-connection-type",
  "version" : "2.2.3-test",
  "name" : "NoBasisConnectionType",
  "title" : "no-basis-connection-type.valueset",
  "status" : "active",
  "experimental" : true,
  "date" : "2019-03-13T10:48:45.936+00:00",
  "description" : "ValueSet for connection types used in Endpoint definition. Includes all Norwegian specific types (no-basis-connection-type) and the extensible HL7 CodeSystem for connection-type",
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
  "immutable" : false,
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.no/fhir/CodeSystem/no-basis-connection-type"
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
      }
    ]
  }
}

```
