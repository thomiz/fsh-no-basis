# no-basis-municipalitycode - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-municipalitycode**

## Extension: no-basis-municipalitycode 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode | *Version*:2.2.2-test |
| Active as of 2021-04-09 | *Computable Name*:NoBasisMunicipalitycode |

Coded value for municipality/county Norwegian kommune

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Address](StructureDefinition-no-basis-Address.md)
* Examples for this Extension: [Patient/JanniceSoreng](Patient-JanniceSoreng.md) and [Patient/JanniceSorengTo](Patient-JanniceSorengTo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-municipalitycode)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-municipalitycode.csv), [Excel](StructureDefinition-no-basis-municipalitycode.xlsx), [Schematron](StructureDefinition-no-basis-municipalitycode.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-municipalitycode",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode",
  "version" : "2.2.2-test",
  "name" : "NoBasisMunicipalitycode",
  "title" : "no-basis-municipalitycode",
  "status" : "active",
  "date" : "2021-04-09",
  "description" : "Coded value for municipality/county Norwegian kommune",
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
      "expression" : "Address.district"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle"
        }
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "definition" : "All Norwegian kommunenummer/municipalitycodes are published by SSB"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "short" : "Actual kommunenummer",
        "definition" : "Norwegian kommunenummer/municipalitycode"
      }
    ]
  }
}

```
