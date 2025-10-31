# no-basis-person-citizenship - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-person-citizenship**

## Extension: no-basis-person-citizenship 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-person-citizenship | *Version*:2.2.3-test | |
| Active as of 2018-12-27 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoBasisPersonCitizenship |

The Person's legal status as citizen of a country.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-person-citizenship)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-person-citizenship.csv), [Excel](StructureDefinition-no-basis-person-citizenship.xlsx), [Schematron](StructureDefinition-no-basis-person-citizenship.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-person-citizenship",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg",
      "valueCode" : "pa"
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-person-citizenship",
  "version" : "2.2.3-test",
  "name" : "NoBasisPersonCitizenship",
  "title" : "no-basis-person-citizenship",
  "status" : "active",
  "date" : "2018-12-27T22:37:54+11:00",
  "description" : "The Person's legal status as citizen of a country.",
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
      "expression" : "Person"
    },
    {
      "type" : "element",
      "expression" : "RelatedPerson"
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
        "short" : "Nation(s) where the person claims citizenship",
        "definition" : "The person's legal status as citizen of a country."
      },
      {
        "id" : "Extension.extension:code",
        "path" : "Extension.extension",
        "sliceName" : "code",
        "short" : "Nation code of citizenship",
        "definition" : "Nation code representing the citizenship of person.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:code.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:code.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "code"
      },
      {
        "id" : "Extension.extension:code.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:period",
        "path" : "Extension.extension",
        "sliceName" : "period",
        "short" : "Time period of citizenship",
        "definition" : "Period when citizenship was effective.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:period.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:period.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "period"
      },
      {
        "id" : "Extension.extension:period.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-person-citizenship"
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
