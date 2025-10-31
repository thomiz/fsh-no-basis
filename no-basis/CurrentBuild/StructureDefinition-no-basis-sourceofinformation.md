# no-basis-sourceofinformation - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-sourceofinformation**

## Extension: no-basis-sourceofinformation 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-sourceofinformation | *Version*:2.2.3-test |
| Active as of 2019-09-20 | *Computable Name*:NoBasisSourceofinformation |

Part of norwegian KI standard.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-sourceofinformation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-sourceofinformation.csv), [Excel](StructureDefinition-no-basis-sourceofinformation.xlsx), [Schematron](StructureDefinition-no-basis-sourceofinformation.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-sourceofinformation",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-sourceofinformation",
  "version" : "2.2.3-test",
  "name" : "NoBasisSourceofinformation",
  "title" : "no-basis-sourceofinformation",
  "status" : "active",
  "date" : "2019-09-20",
  "description" : "Part of norwegian KI standard.",
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
      "type" : "extension",
      "expression" : "AllergyIntolerance"
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
        "short" : "Source of information for Allergy intolerance",
        "definition" : "Extention to support national KI standard."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:source",
        "path" : "Extension.extension",
        "sliceName" : "source",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:source.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:source.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "source"
      },
      {
        "id" : "Extension.extension:source.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:source.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "fixedUri" : "urn:uid:2.16.578.1.12.4.1.1.7498"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-sourceofinformation"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
