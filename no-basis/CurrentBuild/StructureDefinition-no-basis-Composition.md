# no-basis-Composition - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Composition**

## Resource Profile: no-basis-Composition 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Composition | *Version*:2.2.2-test |
| Active as of 2025-10-17 | *Computable Name*:NoBasisComposition |

 
Basisprofil for Norwegian Composition. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to the relevant use-case. 
The profile sets the absolute minimum requirements, identifies the extensions and terminology which can be present. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Composition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Composition.csv), [Excel](StructureDefinition-no-basis-Composition.xlsx), [Schematron](StructureDefinition-no-basis-Composition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Composition",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Composition",
  "version" : "2.2.2-test",
  "name" : "NoBasisComposition",
  "title" : "no-basis-Composition",
  "status" : "active",
  "date" : "2025-10-17T20:41:05+00:00",
  "description" : "Basisprofil for Norwegian Composition. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to the relevant use-case.\n\nThe profile sets the absolute minimum requirements, identifies the extensions and terminology which can be present.",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "fhirdocumentreference",
      "uri" : "http://hl7.org/fhir/documentreference",
      "name" : "FHIR DocumentReference"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Composition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition"
      },
      {
        "id" : "Composition.type",
        "path" : "Composition.type",
        "definition" : "Specifies the particular kind of composition using the codes defined in the valueset 'NoBasisDocumentReferenceType'.\r\nSuch as:\r\n- A00-1 Epikriser og sammenfatninger\r\n- A01-2 Kriseplan\r\n- A02-2 Individuell plan\r\n- etc.\r\n\r\nSee valueset 'NoBasisDocumentReferenceType' in the Terminology section for more information on available types",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-documentreference-type"
        }
      }
    ]
  }
}

```
