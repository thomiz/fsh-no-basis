# no-basis-service-type.valueset - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-service-type.valueset**

## ValueSet: no-basis-service-type.valueset (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/no-basis-service-type | *Version*:2.2.2-test |
| Active as of 2018-10-26 | *Computable Name*:NoBasisServiceType |

 
ValueSet including all codes for service type (tjenestetype) allowed in the Adressergister 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

version: 1; Last updated: 2018-10-16 10:48:46+0000

This value set includes codes based on the following rules:

* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8660`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8668`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8669`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8658`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8659`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8663`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8664`version Not Stated (use latest from terminology server)
* Include all codes defined in `urn:oid:2.16.578.1.12.4.1.1.8666`version Not Stated (use latest from terminology server)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "no-basis-service-type.valueset",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-10-16T10:48:46.366+00:00"
  },
  "url" : "http://hl7.no/fhir/ValueSet/no-basis-service-type",
  "version" : "2.2.2-test",
  "name" : "NoBasisServiceType",
  "title" : "no-basis-service-type.valueset",
  "status" : "active",
  "experimental" : true,
  "date" : "2018-10-26T10:48:45.936+00:00",
  "description" : "ValueSet including all codes for service type (tjenestetype) allowed in the Adressergister",
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
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8660"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8668"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8669"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8658"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8659"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8663"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8664"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.8666"
      }
    ]
  }
}

```
