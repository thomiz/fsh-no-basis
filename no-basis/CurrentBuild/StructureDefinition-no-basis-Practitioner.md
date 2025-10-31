# no-basis-Practitioner - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Practitioner**

## Resource Profile: no-basis-Practitioner 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-Practitioner | *Version*:2.2.3-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisPractitioner |

 
Basisprofil for Norwegian Practitioner information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 
2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner. 

**Usages:**

* Refer to this Profile: [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md)
* Examples for this Profile: [Practitioner/Magnar-Komann-Practitioner](Practitioner-Magnar-Komann-Practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Practitioner)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Practitioner.csv), [Excel](StructureDefinition-no-basis-Practitioner.xlsx), [Schematron](StructureDefinition-no-basis-Practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Practitioner",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-06-06T06:11:16.19+00:00"
  },
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Practitioner",
  "version" : "2.2.3-test",
  "name" : "NoBasisPractitioner",
  "title" : "no-basis-Practitioner",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian Practitioner information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\n2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.identifier",
        "path" : "Practitioner.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "An identifier that applies to this person in this role.\r\n\r\nIn Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification."
      },
      {
        "id" : "Practitioner.identifier:HPR",
        "path" : "Practitioner.identifier",
        "sliceName" : "HPR",
        "short" : "HPR number",
        "definition" : "In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification.\r\n\r\nThe norwegian helsepersonellnummer for the practitioner. HPR as one of the possible practitioner identification numbers, should at least be sent unless there is a reason not to. Reasons for not sending the HPR number include but are not limited to, research and apps without a contract for processing data.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.identifier:HPR.system",
        "path" : "Practitioner.identifier.system",
        "short" : "The identifier for HPR number",
        "definition" : "The identifier for HPR number",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.4"
      },
      {
        "id" : "Practitioner.identifier:HPR.value",
        "path" : "Practitioner.identifier.value",
        "short" : "The acttual HPR-number",
        "definition" : "The acttual HPR-number",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:FNR",
        "path" : "Practitioner.identifier",
        "sliceName" : "FNR",
        "short" : "Norwegian FNR",
        "definition" : "Fødselsnummer for the practitioner. Fødselsnummer as one of the possible practitioner identification numbers. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.identifier:FNR.system",
        "path" : "Practitioner.identifier.system",
        "short" : "The identification of FNR",
        "definition" : "The identification of FNR",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
      },
      {
        "id" : "Practitioner.identifier:FNR.value",
        "path" : "Practitioner.identifier.value",
        "short" : "The actual FNR",
        "min" : 1
      },
      {
        "id" : "Practitioner.identifier:DNR",
        "path" : "Practitioner.identifier",
        "sliceName" : "DNR",
        "short" : "The D-nummer of the practitioner",
        "definition" : "The D-nummer of the practitioner. (assigned by the norwegian Skatteetaten)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Practitioner.identifier:DNR.system",
        "path" : "Practitioner.identifier.system",
        "short" : "The identification of the D-nummer",
        "definition" : "The identification of the Norwegian D-nummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
      },
      {
        "id" : "Practitioner.identifier:DNR.value",
        "path" : "Practitioner.identifier.value",
        "short" : "The actual D-nummer",
        "definition" : "The actual Norwegian D-nummer",
        "min" : 1
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
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
        "id" : "Practitioner.address",
        "path" : "Practitioner.address",
        "short" : "Norwegian address",
        "definition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Address\r\n\r\nAddress(es) of the practitioner that are not role specific (typically home address). \rWork addresses are not typically entered in this property as they are usually role dependent.",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/ig/StructureDefinition/no-basis-Address"]
          }
        ]
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification",
        "definition" : "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
      },
      {
        "id" : "Practitioner.qualification.code",
        "path" : "Practitioner.qualification.code",
        "definition" : "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
      },
      {
        "id" : "Practitioner.qualification.code.coding",
        "path" : "Practitioner.qualification.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "short" : "Coded representation of the qualification",
        "definition" : "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnellCategory",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "healthPersonnellCategory",
        "short" : "The health care personnel category",
        "definition" : "Category of health care personnel authorization according to Helsepersonnelloven §48",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.9060"
        }
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnellCategory.system",
        "path" : "Practitioner.qualification.code.coding.system",
        "short" : "Identification of the CodeSystem 9060 on Volven",
        "definition" : "Identification of the CodeSystem Kategori helsepersonell (OID=9060) used to describe the category of authorized health care personnel",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.9060"
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnellCategory.code",
        "path" : "Practitioner.qualification.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Practitioner.qualification.code.coding:approvalType",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "approvalType",
        "short" : "The approval type of the practitioner",
        "definition" : "The approval type of the practitioner (if applicable) according to the CodeSystem Godkjenningstype HPR (OID=7704)",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.7704"
        }
      },
      {
        "id" : "Practitioner.qualification.code.coding:approvalType.system",
        "path" : "Practitioner.qualification.code.coding.system",
        "short" : "Identification of the CodeSystem 7704 on Volven",
        "definition" : "Identification of the CodeSystem Godkjenningstype HPR (OID=7704) used to describe type of autohorization registered in HPR.",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7704"
      },
      {
        "id" : "Practitioner.qualification.code.coding:approvalType.code",
        "path" : "Practitioner.qualification.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnelSpecialization",
        "path" : "Practitioner.qualification.code.coding",
        "sliceName" : "healthPersonnelSpecialization",
        "short" : "Godkjent spesialitet for helsepersonell registrert i HPR.",
        "definition" : "Godkjent spesialitet for helsepersonell registrert i HPR. Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=7426)",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.7426"
        }
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnelSpecialization.system",
        "path" : "Practitioner.qualification.code.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7426"
      },
      {
        "id" : "Practitioner.qualification.code.coding:healthPersonnelSpecialization.code",
        "path" : "Practitioner.qualification.code.coding.code",
        "min" : 1
      }
    ]
  }
}

```
