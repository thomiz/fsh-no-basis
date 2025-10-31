# no-basis-Patient - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Patient**

## Resource Profile: no-basis-Patient 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient | *Version*:2.2.3-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisPatient |

 
Basisprofil for Norwegian Patient information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Refer to this Profile: [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md), [no-basis-MedicationStatement](StructureDefinition-no-basis-MedicationStatement.md) and [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)
* Examples for this Profile: [Patient/EspenEksempel](Patient-EspenEksempel.md), [Patient/JanniceSoreng](Patient-JanniceSoreng.md) and [Patient/JanniceSorengTo](Patient-JanniceSorengTo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Patient.csv), [Excel](StructureDefinition-no-basis-Patient.xlsx), [Schematron](StructureDefinition-no-basis-Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Patient",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2018-06-15T13:55:18.157+00:00"
  },
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient",
  "version" : "2.2.3-test",
  "name" : "NoBasisPatient",
  "title" : "no-basis-Patient",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian Patient information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "alias" : ["Pasient"]
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.extension:citizenship",
        "path" : "Patient.extension",
        "sliceName" : "citizenship",
        "short" : "The citizenship of the patient",
        "definition" : "The citizenship of the patient. should be a country code from ISO 3166 code system",
        "alias" : ["statsborgerskap", "user content"],
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:citizenship.extension:code",
        "path" : "Patient.extension.extension",
        "sliceName" : "code",
        "definition" : "no-basis-Patient introduces iso 3166 codes\r\n\r\nNation code representing the citizenship of patient."
      },
      {
        "id" : "Patient.extension:citizenship.extension:code.value[x]",
        "path" : "Patient.extension.extension.value[x]",
        "binding" : {
          "strength" : "example",
          "valueSet" : "urn:iso:std:iso:3166"
        }
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "short" : "Identifier for this patient",
        "definition" : "An identifier for this patient. Should be at Fødselsnummer, Felles hjelpenummer, D-nummer or locally assigned H-nummer"
      },
      {
        "id" : "Patient.identifier:FNR",
        "path" : "Patient.identifier",
        "sliceName" : "FNR",
        "short" : "Norwegian FNR",
        "definition" : "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:FNR.system",
        "path" : "Patient.identifier.system",
        "short" : "Identification of the Norwegian FNR",
        "definition" : "Identifies that this is a Norwegian Fødselsnummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
      },
      {
        "id" : "Patient.identifier:FNR.value",
        "path" : "Patient.identifier.value",
        "short" : "The actual Fødselsnummer",
        "definition" : "The Norwegian Fødselsnummer",
        "alias" : ["Fødselsnummer"],
        "min" : 1,
        "example" : [
          {
            "label" : "Fødselsnummer",
            "valueString" : "13057444850"
          }
        ]
      },
      {
        "id" : "Patient.identifier:FHN",
        "path" : "Patient.identifier",
        "sliceName" : "FHN",
        "short" : "Felles hjelpenummer used for the patient",
        "definition" : "Felles hjelpenummer for the patient. Felles hjelpenummer as one of the possible patient identification numbers. The norwegian Felles hjelpenummer shoud only be used when the Fødselsnummer og D-number is unknown.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:FHN.system",
        "path" : "Patient.identifier.system",
        "short" : "Identification of the Norwegian felles hjelpenummer",
        "definition" : "Norwegian felles hjelpenummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.3"
      },
      {
        "id" : "Patient.identifier:FHN.value",
        "path" : "Patient.identifier.value",
        "short" : "The actual Hjelpenummer",
        "definition" : "The actual Norwegian Hjelpenummer",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:DNR",
        "path" : "Patient.identifier",
        "sliceName" : "DNR",
        "short" : "The D-nummer of the patient",
        "definition" : "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:DNR.system",
        "path" : "Patient.identifier.system",
        "short" : "The identification of the D-nummer",
        "definition" : "The identification of the Norwegian D-nummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
      },
      {
        "id" : "Patient.identifier:DNR.value",
        "path" : "Patient.identifier.value",
        "short" : "The actual D-nummer",
        "definition" : "The actual Norwegian D-nummer",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:HNR",
        "path" : "Patient.identifier",
        "sliceName" : "HNR",
        "short" : "A locally assigned H-nummer",
        "definition" : "A locally assigned H-nummer. If this identifier is used, information about the assigner is mandatory.  Merk at lokale hjelpenummer (H-nummer) for pasient ikke garanterer at kombinasjonen system og value er gir unik identifikasjon, siden disse tildeles på lokalt i det enkelte kliniske fagsystem. Felles nasjonale hjelpenummer utstedt av tjenesten for felles hjelpenummer er imidlertid unike i Norge (og globalt unike i kombinasjon med system).",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Patient.identifier:HNR.type.coding.system",
        "path" : "Patient.identifier.type.coding.system",
        "definition" : "CodeSystem on Volven for official personal identifiers.\r\nThe identification of the code system that defines the meaning of the symbol in the code.",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8327"
      },
      {
        "id" : "Patient.identifier:HNR.type.coding.code",
        "path" : "Patient.identifier.type.coding.code",
        "definition" : "The code for local Hjelpenummer in the CodeSystem\r\n\r\nA symbol in syntax defined by the system. The symbol may be a predefined code or an expression in a syntax defined by the coding system (e.g. post-coordination).",
        "min" : 1,
        "fixedCode" : "HNR"
      },
      {
        "id" : "Patient.identifier:HNR.system",
        "path" : "Patient.identifier.system",
        "min" : 1,
        "fixedUri" : "HNR"
      },
      {
        "id" : "Patient.identifier:HNR.value",
        "path" : "Patient.identifier.value",
        "definition" : "The actual Hjelpenummer.\r\n\r\nThe portion of the identifier typically relevant to the user and which is unique within the context of the system.",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:HNR.assigner",
        "path" : "Patient.identifier.assigner",
        "definition" : "Assigner is mandatory for localy assigne Hjelpenummer.\r\n\r\nOrganization that issued/manages the identifier.",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HumanName"
            ]
          }
        ]
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "short" : "Norwegian address",
        "definition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/ig/StructureDefinition/no-basis-Address"]
          }
        ]
      },
      {
        "id" : "Patient.contact.name",
        "path" : "Patient.contact.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HumanName"
            ]
          }
        ]
      },
      {
        "id" : "Patient.contact.address",
        "path" : "Patient.contact.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/ig/StructureDefinition/no-basis-Address"]
          }
        ]
      }
    ]
  }
}

```
