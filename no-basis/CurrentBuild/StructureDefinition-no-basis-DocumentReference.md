# no-basis-DocumentReference - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-DocumentReference**

## Resource Profile: no-basis-DocumentReference 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-DocumentReference | *Version*:2.2.3-test |
| Active as of 2020-08-21 | *Computable Name*:NoBasisDocumentReference |

 
Basisprofil for Norwegian DocumentReference. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to specification relevant to the use-case. 
The profile sets the absolute minimum requirements when searching, fething and storing documents within the healtcare domain. It sets the basic requirements for extensions and terminology which can be present. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-DocumentReference)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-DocumentReference.csv), [Excel](StructureDefinition-no-basis-DocumentReference.xlsx), [Schematron](StructureDefinition-no-basis-DocumentReference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-DocumentReference",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-DocumentReference",
  "version" : "2.2.3-test",
  "name" : "NoBasisDocumentReference",
  "title" : "no-basis-DocumentReference",
  "status" : "active",
  "date" : "2020-08-21",
  "description" : "Basisprofil for Norwegian DocumentReference. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe profile sets the absolute minimum requirements when searching, fething and storing documents within the healtcare domain. It sets the basic requirements for extensions and terminology which can be present.",
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
      "identity" : "fhircomposition",
      "uri" : "http://hl7.org/fhir/composition",
      "name" : "FHIR Composition"
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "xds",
      "uri" : "http://ihe.net/xds",
      "name" : "XDS metadata equivalent"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DocumentReference",
        "path" : "DocumentReference"
      },
      {
        "id" : "DocumentReference.type",
        "path" : "DocumentReference.type",
        "short" : "Kind of document",
        "definition" : "Specifies the particular kind of document referenced using the codes defined in the valueset 'NoBasisDocumentReferenceType'.\r\nSuch as:\r\n- A00-1 Epikriser og sammenfatninger\r\n- A01-2 Kriseplan\r\n- A02-2 Individuell plan\r\n- etc.\r\n\r\nSee valueset 'NoBasisDocumentReferenceType' in the Terminology section for more information on available types",
        "comment" : "Key metadata element describing the document that describes the exact type of document. Helps humans to assess whether the document is of interest when viewing a list of documents.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-documentreference-type"
        }
      }
    ]
  }
}

```
