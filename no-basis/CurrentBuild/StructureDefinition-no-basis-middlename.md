# no-basis-middlename - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-middlename**

## Extension: no-basis-middlename 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-middlename | *Version*:2.2.2-test |
| Active as of 2019-09-23 | *Computable Name*:NoBasisMiddlename |

The basis extension defines the Norwegian middlename wich is called "mellomnavn" and defined by Norwegian legislation (Lov om personnavn).

Specific usage of middle name as a specific part of official name standard where name order is important

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-HumanName](StructureDefinition-no-basis-HumanName.md)
* Examples for this Extension: [Patient/JanniceSoreng](Patient-JanniceSoreng.md), [Patient/JanniceSorengTo](Patient-JanniceSorengTo.md), [RelatedPerson/Solid-Aresdoktor-RelatedPerson](RelatedPerson-Solid-Aresdoktor-RelatedPerson.md) and [RelatedPerson/Sorgard-Erlend-RelatedPerson](RelatedPerson-Sorgard-Erlend-RelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-middlename)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-middlename.csv), [Excel](StructureDefinition-no-basis-middlename.xlsx), [Schematron](StructureDefinition-no-basis-middlename.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-middlename",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-06-13T12:23:00.348+00:00"
  },
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
  "version" : "2.2.2-test",
  "name" : "NoBasisMiddlename",
  "title" : "no-basis-middlename",
  "status" : "active",
  "date" : "2019-09-23",
  "description" : "The basis extension defines the Norwegian middlename wich is called \"mellomnavn\" and defined by Norwegian legislation (Lov om personnavn).",
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
  "purpose" : "Specific usage of middle name as a specific part of official name standard where name order is important",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "primitive-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "HumanName"
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
        "short" : "Defines a Norwegian middle name",
        "definition" : "The basis extension defines the Norwegian middlename wich is called \"mellomnavn\" and defined by Norwegian legislation (Lov om personnavn).",
        "alias" : ["mellomnavn"],
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
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "The middle name of a person",
        "definition" : "The middle name of a person.\r\nThe middlename should be a norwegian middlename as defined by norwegian legislation (Lov om personnavn).",
        "alias" : ["mellomnavn"],
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
