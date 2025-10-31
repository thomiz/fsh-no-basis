# no-basis-parental-responsibility.valueset - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-parental-responsibility.valueset**

## ValueSet: no-basis-parental-responsibility.valueset (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/no-basis-parental-responsibility | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:NoBasisParentalResponsibility |

 
Copy of Codes from Foreldreansvar defined by Skatteetaten 

 **References** 

* [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)

### Logical Definition (CLD)

version: 1; Last updated: 2018-10-16 10:48:46+0000

* Include all codes defined in [`http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility`](CodeSystem-no-basis-parental-responsibility.codesystem.md)version 📦2.2.3-test

 

### Expansion

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
  "id" : "no-basis-parental-responsibility.valueset",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-10-16T10:48:46.366+00:00"
  },
  "url" : "http://hl7.no/fhir/ValueSet/no-basis-parental-responsibility",
  "version" : "2.2.3-test",
  "name" : "NoBasisParentalResponsibility",
  "title" : "no-basis-parental-responsibility.valueset",
  "status" : "active",
  "experimental" : true,
  "date" : "2018-10-26T10:48:45.936+00:00",
  "description" : "Copy of Codes from Foreldreansvar defined by Skatteetaten",
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
        "system" : "http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility"
      }
    ]
  }
}

```
