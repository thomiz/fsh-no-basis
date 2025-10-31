# no-basis-AllergyIntolerance - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-AllergyIntolerance**

## Resource Profile: no-basis-AllergyIntolerance 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-AllergyIntolerance | *Version*:2.2.3-test |
| Active as of 2019-07-03 | *Computable Name*:NoBasisAllergyIntolerance |

 
Basis profile for allergy intolerance, to be used in Norway. The profile is adapted to support the norwegian standard for critical information (KI standard). 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-AllergyIntolerance)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-AllergyIntolerance.csv), [Excel](StructureDefinition-no-basis-AllergyIntolerance.xlsx), [Schematron](StructureDefinition-no-basis-AllergyIntolerance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-AllergyIntolerance",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-AllergyIntolerance",
  "version" : "2.2.3-test",
  "name" : "NoBasisAllergyIntolerance",
  "title" : "no-basis-AllergyIntolerance",
  "status" : "active",
  "date" : "2019-07-03",
  "description" : "Basis profile for allergy intolerance, to be used in Norway. The profile is adapted to support the norwegian standard for critical information (KI standard).",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AllergyIntolerance",
        "path" : "AllergyIntolerance",
        "definition" : "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.\r\n\r\nNorwegian profile:  \r\nno-basis-AllergyIntolerance is the basic profile for communicating Allergy intoleeance identifed for a patient. It is adapted to be used in Norway. The profile has the following changes from AllergyIntolerance:\r\n- There are restrictions to use verificationStatus since KI is using Certainty that has similar use\r\n- Reference to patient is changes. no-basis-patient should be used.\r\n- Substance is required and should include one of: ATC, FestSubstance, FestMedication\r\n- manifestation is changed to use codingsystem 7497\r\n- the profile is extended with certanity and sourceOfInformation to support national KI standard"
      },
      {
        "id" : "AllergyIntolerance.extension",
        "path" : "AllergyIntolerance.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "AllergyIntolerance.extension:sourceofinformation",
        "path" : "AllergyIntolerance.extension",
        "sliceName" : "sourceofinformation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-sourceofinformation"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.clinicalStatus",
        "path" : "AllergyIntolerance.clinicalStatus",
        "definition" : "Inaktiv if refuted or entered-in-error, others = active."
      },
      {
        "id" : "AllergyIntolerance.verificationStatus",
        "path" : "AllergyIntolerance.verificationStatus",
        "short" : "unconfirmed | presumed | confirmed | refuted | entered-in-error",
        "definition" : "Mapping KI sannsynlighet: KJ: \r\nMistenkt=unconfirmed\r\nSannsynlig=presumed\r\nBekreftet=confirmed\r\nAvkreftet = refuted\r\nSlette = entered-in-error"
      },
      {
        "id" : "AllergyIntolerance.verificationStatus.coding.system",
        "path" : "AllergyIntolerance.verificationStatus.coding.system",
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
      },
      {
        "id" : "AllergyIntolerance.code.coding",
        "path" : "AllergyIntolerance.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "AllergyIntolerance.code.coding:ATC",
        "path" : "AllergyIntolerance.code.coding",
        "sliceName" : "ATC",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AllergyIntolerance.code.coding:ATC.system",
        "path" : "AllergyIntolerance.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://www.whocc.no/atc"
      },
      {
        "id" : "AllergyIntolerance.code.coding:FESTSubstance",
        "path" : "AllergyIntolerance.code.coding",
        "sliceName" : "FESTSubstance",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AllergyIntolerance.code.coding:FESTSubstance.system",
        "path" : "AllergyIntolerance.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://ehelse.no/FESTSubstance"
      },
      {
        "id" : "AllergyIntolerance.code.coding:FESTMedication",
        "path" : "AllergyIntolerance.code.coding",
        "sliceName" : "FESTMedication",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "AllergyIntolerance.code.coding:FESTMedication.system",
        "path" : "AllergyIntolerance.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://ehelse.no/FESTMedication"
      },
      {
        "id" : "AllergyIntolerance.patient",
        "path" : "AllergyIntolerance.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient"]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.recorder",
        "path" : "AllergyIntolerance.recorder",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Practitioner",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-PractitionerRole",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.asserter",
        "path" : "AllergyIntolerance.asserter",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Practitioner",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-PractitionerRole",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.reaction",
        "path" : "AllergyIntolerance.reaction",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation",
        "path" : "AllergyIntolerance.reaction.manifestation",
        "definition" : "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event. Coding system 7497 shall be used.",
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation.coding",
        "path" : "AllergyIntolerance.reaction.manifestation.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation.coding.system",
        "path" : "AllergyIntolerance.reaction.manifestation.coding.system",
        "min" : 1,
        "fixedUri" : "urn:uid:2.16.578.1.12.4.1.1.7497"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation.coding.code",
        "path" : "AllergyIntolerance.reaction.manifestation.coding.code",
        "min" : 1
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation.coding.display",
        "path" : "AllergyIntolerance.reaction.manifestation.coding.display",
        "min" : 1
      },
      {
        "id" : "AllergyIntolerance.reaction.severity",
        "path" : "AllergyIntolerance.reaction.severity",
        "definition" : "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations. Mapping to KI standard  is Severe=Alvorlig. Moderate=Mild=Mindre alvorlig."
      }
    ]
  }
}

```
