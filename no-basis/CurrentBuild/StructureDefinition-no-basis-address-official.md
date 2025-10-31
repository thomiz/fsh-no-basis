# no-basis-address-official - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-address-official**

## Extension: no-basis-address-official 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-address-official | *Version*:2.2.3-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisAddressOfficial |

Defines the concept of an officialy registered address in Norway. Usually this will be the adress registered in "Folkeregisteret" for persons or "Enhetsregisteret" for organizations.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Address](StructureDefinition-no-basis-Address.md)
* Examples for this Extension: [Patient/JanniceSorengTo](Patient-JanniceSorengTo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-address-official)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-address-official.csv), [Excel](StructureDefinition-no-basis-address-official.xlsx), [Schematron](StructureDefinition-no-basis-address-official.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-address-official",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2019-05-15T08:03:50.475+00:00"
  },
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-address-official",
  "version" : "2.2.3-test",
  "name" : "NoBasisAddressOfficial",
  "title" : "no-basis-address-official",
  "status" : "active",
  "experimental" : false,
  "date" : "2019-05-15",
  "description" : "Defines the concept of an officialy registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Address"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "The concept of an officially registered address",
        "definition" : "Defines the concept of an officially registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations.",
        "max" : "1"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-address-official"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "definition" : "True for officially registered addresses, false for other addresses",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
