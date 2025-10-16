# no-basis-MedicationStatement - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-MedicationStatement**

## Resource Profile: no-basis-MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-MedicationStatement | *Version*:2.2.2-test |
| Active as of 2019-09-20 | *Computable Name*:NoBasisMedicationStatement |

 
Basis profile for medication statement, to be used in Norway. The profile is adapted to include norwegian specific features and constraints. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-MedicationStatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-MedicationStatement.csv), [Excel](StructureDefinition-no-basis-MedicationStatement.xlsx), [Schematron](StructureDefinition-no-basis-MedicationStatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-MedicationStatement",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-MedicationStatement",
  "version" : "2.2.2-test",
  "name" : "NoBasisMedicationStatement",
  "title" : "no-basis-MedicationStatement",
  "status" : "active",
  "date" : "2019-09-20",
  "description" : "Basis profile for medication statement, to be used in Norway. The profile is adapted to include norwegian specific features and constraints.",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement",
        "definition" : "A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or other party maintains \r\n\r\nNorwegian profile: \r\nno-basis-Medication statement is the basic profile for communicating what the patient is using, has been using og plan to use. To be used in PLL and similar resources that communicate information about medication use. The profile has the following changes from MedicationStatement:\r\n- PLL-id is added as an identifier\r\n- reference to no-basis-medication is added and should be used as prefered reference. \r\n- reference to no-basis-patient is added (subject) and should be used as prefered reference.\r\n- ICPC2 and ICD10 is added as prefered reasonCode."
      },
      {
        "id" : "MedicationStatement.identifier",
        "path" : "MedicationStatement.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : true,
          "rules" : "openAtEnd"
        }
      },
      {
        "id" : "MedicationStatement.identifier:PLL-id",
        "path" : "MedicationStatement.identifier",
        "sliceName" : "PLL-id",
        "short" : "Identifier of norwegian PLL registration",
        "definition" : "If the medicationstatement is part of PLL, then PLL-id shall be registered.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "MedicationStatement.identifier:PLL-id.type",
        "path" : "MedicationStatement.identifier.type",
        "fixedCodeableConcept" : {
          "text" : "PLL"
        }
      },
      {
        "id" : "MedicationStatement.identifier:PLL-id.type.text",
        "path" : "MedicationStatement.identifier.type.text",
        "min" : 1,
        "fixedString" : "PLL"
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "definition" : "A code representing the patient or other source's judgment about the state of the medication used that this statement is about.  Generally this will be active or completed.\r\n\r\nactive = start date has passed and end date is not reached\r\ncompleted = end date is passed (for treatement that had an initial stop date)\r\nentered-in-error = deleted (ref Norwegian laws)\r\nintended = start date is not reached\r\nstopped = end date is passed and it was an active desition to stop the treatment\r\non-hold = the treatment is paused"
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationStatement.medication[x]:medicationReference",
        "path" : "MedicationStatement.medication[x]",
        "sliceName" : "medicationReference",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Medication"]
          }
        ]
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
          }
        ]
      },
      {
        "id" : "MedicationStatement.reasonCode",
        "path" : "MedicationStatement.reasonCode",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationStatement.reasonCode:ICPC2",
        "path" : "MedicationStatement.reasonCode",
        "sliceName" : "ICPC2",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "MedicationStatement.reasonCode:ICPC2.coding.system",
        "path" : "MedicationStatement.reasonCode.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7170"
      },
      {
        "id" : "MedicationStatement.reasonCode:ICPC2.coding.code",
        "path" : "MedicationStatement.reasonCode.coding.code",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.reasonCode:ICPC2.coding.display",
        "path" : "MedicationStatement.reasonCode.coding.display",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.reasonCode:ICD10",
        "path" : "MedicationStatement.reasonCode",
        "sliceName" : "ICD10",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "MedicationStatement.reasonCode:ICD10.coding.system",
        "path" : "MedicationStatement.reasonCode.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7110"
      },
      {
        "id" : "MedicationStatement.reasonCode:ICD10.coding.code",
        "path" : "MedicationStatement.reasonCode.coding.code",
        "min" : 1
      },
      {
        "id" : "MedicationStatement.reasonCode:ICD10.coding.display",
        "path" : "MedicationStatement.reasonCode.coding.display",
        "min" : 1
      }
    ]
  }
}

```
