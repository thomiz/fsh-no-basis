# no-basis-urban-district - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-urban-district**

## Extension: no-basis-urban-district 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-urban-district | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:NoBasisUrbanDistrict |

Simple extension containing information about what part of a norwegian city the patient is a resident. Administrative purpose.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Address](StructureDefinition-no-basis-Address.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-urban-district)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-urban-district.csv), [Excel](StructureDefinition-no-basis-urban-district.xlsx), [Schematron](StructureDefinition-no-basis-urban-district.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-urban-district",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-06-13T12:22:12.74+00:00"
  },
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-urban-district",
  "version" : "2.2.3-test",
  "name" : "NoBasisUrbanDistrict",
  "title" : "no-basis-urban-district",
  "status" : "active",
  "date" : "2018-10-26",
  "description" : "Simple extension containing information about what part of a norwegian city the patient is a resident. Administrative purpose.",
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
      "expression" : "Patient"
    },
    {
      "type" : "element",
      "expression" : "Address"
    },
    {
      "type" : "element",
      "expression" : "Person"
    },
    {
      "type" : "element",
      "expression" : "Practitioner"
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
        "alias" : ["bydel", "urban district"]
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-urban-district"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Urban District information",
        "definition" : "The name and number of the bydel (part of the city). If coded this information should be coded according to CodeSystem urn:oid:2.16.578.1.12.4.1.1.3403",
        "alias" : ["Bydel", "Urban district"],
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "Bydel",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.3403"
        }
      }
    ]
  }
}

```
