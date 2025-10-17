# no-basis-group - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-group**

## Extension: no-basis-group 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-group | *Version*:2.2.2-test |
| Active as of 2025-10-17 | *Computable Name*:NoBasisGroup |

The appointment is a group session.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Appointment](StructureDefinition-no-basis-Appointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-group)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-group.csv), [Excel](StructureDefinition-no-basis-group.xlsx), [Schematron](StructureDefinition-no-basis-group.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-group",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-group",
  "version" : "2.2.2-test",
  "name" : "NoBasisGroup",
  "title" : "no-basis-group",
  "status" : "active",
  "date" : "2025-10-17T20:48:12+00:00",
  "description" : "The appointment is a group session.",
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
      "expression" : "Appointment"
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
        "short" : "no-basis-group",
        "definition" : "The appointment is a group session.",
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
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-group"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "The appointment is a group session.",
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
