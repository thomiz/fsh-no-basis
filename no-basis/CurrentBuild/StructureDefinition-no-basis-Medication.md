# no-basis-Medication - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Medication**

## Resource Profile: no-basis-Medication 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Medication | *Version*:2.2.2-test |
| Active as of 2019-07-03 | *Computable Name*:NoBasisMedication |

 
Basis profile for medication to be used in Norway. The profile is adapted to use FEST as source of information. 

**Usages:**

* Refer to this Profile: [no-basis-MedicationStatement](StructureDefinition-no-basis-MedicationStatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Medication.csv), [Excel](StructureDefinition-no-basis-Medication.xlsx), [Schematron](StructureDefinition-no-basis-Medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Medication",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Medication",
  "version" : "2.2.2-test",
  "name" : "NoBasisMedication",
  "title" : "no-basis-Medication",
  "status" : "active",
  "date" : "2019-07-03",
  "description" : "Basis profile for medication to be used in Norway. The profile is adapted to use FEST as source of information.",
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
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication",
        "definition" : "This resource is primarily used for the identification and definition of a medication. It covers the ingredients and the packaging for a medication.\r\n\r\nThe resource has been changed to support norwegian FEST. The following changes are done:\r\n- it is required to use a code identifying the medication in FEST. Special use when medication not present in FEST.\r\n- ATC is a prefered code and should allways be identied if medication is present in FEST.\r\n- isBrand is a required filed. \r\n- form is required and will follow norwegian codingsystem\r\n- the profile is extended with no-basis-Prescriptiongroup"
      },
      {
        "id" : "Medication.extension",
        "path" : "Medication.extension",
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
        "id" : "Medication.extension:prescriptiongroup",
        "path" : "Medication.extension",
        "sliceName" : "prescriptiongroup",
        "definition" : "Prescription group is refered in IDMP as Legal status of supply.",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-prescriptiongroup"
            ]
          }
        ]
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "min" : 1
      },
      {
        "id" : "Medication.code.coding",
        "path" : "Medication.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Medication.code.coding:FEST-Medication",
        "path" : "Medication.code.coding",
        "sliceName" : "FEST-Medication",
        "short" : "Medication defined in FEST",
        "definition" : "Medication is one of the following types: LegemiddelVirkestoff, LegemiddelMerkevare, Legemiddelpakning, Legemiddeldose.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Medication.code.coding:FEST-Medication.system",
        "path" : "Medication.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://ehelse.no/fhir/CodeSystem/FEST"
      },
      {
        "id" : "Medication.code.coding:FEST-Medication.display",
        "path" : "Medication.code.coding.display",
        "min" : 1
      },
      {
        "id" : "Medication.code.coding:ATC",
        "path" : "Medication.code.coding",
        "sliceName" : "ATC",
        "short" : "ATC",
        "definition" : "Medications ATC code if present.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Medication.code.coding:ATC.system",
        "path" : "Medication.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://www.whocc.no/atc"
      },
      {
        "id" : "Medication.code.coding:ATC.code",
        "path" : "Medication.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Medication.code.coding:ATC.display",
        "path" : "Medication.code.coding.display",
        "min" : 1
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "short" : "Code from volven 7448",
        "definition" : "Code as defined in",
        "min" : 1
      },
      {
        "id" : "Medication.form.coding",
        "path" : "Medication.form.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Medication.form.coding:FEST-Form",
        "path" : "Medication.form.coding",
        "sliceName" : "FEST-Form",
        "short" : "Form given by norwegian codingsystem",
        "definition" : "Norwegian coding of the medication form, as given in FEST and based on codingsystem 7448.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Medication.form.coding:FEST-Form.system",
        "path" : "Medication.form.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7448"
      },
      {
        "id" : "Medication.form.coding:FEST-Form.code",
        "path" : "Medication.form.coding.code",
        "min" : 1
      },
      {
        "id" : "Medication.form.coding:FEST-Form.display",
        "path" : "Medication.form.coding.display",
        "min" : 1
      }
    ]
  }
}

```
