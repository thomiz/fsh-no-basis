# No Basis VirtualServiceType Value Set - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **No Basis VirtualServiceType Value Set**

## ValueSet: No Basis VirtualServiceType Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/no-basis-virtual-service-type | *Version*:2.2.3-test |
| Active as of 2023-10-05 | *Computable Name*:NoBasisVirtualServiceType |

 
Example codes for virtual service connection types. Any other codes or codesystem should be added to this valueSet 

 **References** 

* [no-basis-virtual-service](StructureDefinition-no-basis-virtual-service.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Include all codes defined in `urn:oid:2.16.840.1.113883.4.642.4.1809`version Not Stated (use latest from terminology server)
* Include all codes defined in [`http://hl7.org/fhir/contact-point-system`](http://hl7.org/fhir/R4/codesystem-contact-point-system.html)version 📦4.0.1

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

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
  "id" : "no-basis-virtual-service-type.valueset",
  "url" : "http://hl7.no/fhir/ValueSet/no-basis-virtual-service-type",
  "version" : "2.2.3-test",
  "name" : "NoBasisVirtualServiceType",
  "title" : "No Basis VirtualServiceType Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-10-05T21:14:02.936+00:00",
  "contact" : [
    {
      "name" : "Hl7 Norge",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://Hl7.no/"
        }
      ]
    }
  ],
  "description" : "Example codes for virtual service connection types. Any other codes or codesystem should be added to this valueSet",
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
  "compose" : {
    "include" : [
      {
        "system" : "urn:oid:2.16.840.1.113883.4.642.4.1809"
      },
      {
        "system" : "http://hl7.org/fhir/contact-point-system"
      }
    ]
  }
}

```
