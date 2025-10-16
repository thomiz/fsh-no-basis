# no-basis-relatedperson-person-reference - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-relatedperson-person-reference**

## Extension: no-basis-relatedperson-person-reference 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference | *Version*:2.2.2-test |
| Active as of 2021-04-07 | *Computable Name*:NoBasisRelatedpersonPersonReference |

If a person reference is needed in RelatedPerson.patient element, this optional extension should be used.

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [RelatedPerson/Sorgard-Erlend-RelatedPerson](RelatedPerson-Sorgard-Erlend-RelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-relatedperson-person-reference)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-relatedperson-person-reference.csv), [Excel](StructureDefinition-no-basis-relatedperson-person-reference.xlsx), [Schematron](StructureDefinition-no-basis-relatedperson-person-reference.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-relatedperson-person-reference",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference",
  "version" : "2.2.2-test",
  "name" : "NoBasisRelatedpersonPersonReference",
  "title" : "no-basis-relatedperson-person-reference",
  "status" : "active",
  "date" : "2021-04-07",
  "description" : "If a person reference is needed in RelatedPerson.patient element, this optional extension should be used.",
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
      "expression" : "RelatedPerson.patient"
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
        "short" : "Person reference in RelatedPerson.patient element",
        "definition" : "If a person reference is needed in RelatedPerson.patient element, this optional extension should be used.\r\nThe extension includes a reference to a single Person/no-basis-Person resource.\r\n\r\nTo support searches for identifiers, an identifier value should be supported in addition to the literal reference.",
        "comment" : "no-basis currently (v2.0.15) don't include search parameter definition for this extension."
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Reference to person resource",
        "definition" : "Reference to a single Person/no-basis-Person resource in RelatedPerson.patient element. \r\nShould only be used when a Person resource reference is needed.\r\n\r\nName or identifier should be supplied in the RelatedPerson.patient element, in addition to information supplied in this extension.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-Person",
              "http://hl7.org/fhir/StructureDefinition/Person"
            ]
          }
        ]
      }
    ]
  }
}

```
