# no-basis-PractitionerRole - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-PractitionerRole**

## Resource Profile: no-basis-PractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole | *Version*:2.2.2-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisPractitionerRole |

 
Basisprofil for Norwegian PractitionerRole information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific role information is available. The basis profile is open, but derived profiles should close down the information elements according to specifications relevant to the use-case. 
The main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization. 

**Usages:**

* Refer to this Profile: [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-PractitionerRole)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-PractitionerRole.csv), [Excel](StructureDefinition-no-basis-PractitionerRole.xlsx), [Schematron](StructureDefinition-no-basis-PractitionerRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-PractitionerRole",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-PractitionerRole",
  "version" : "2.2.2-test",
  "name" : "NoBasisPractitionerRole",
  "title" : "no-basis-PractitionerRole",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian PractitionerRole information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific role information is available. The basis profile is open, but derived profiles should close down the information elements according to specifications relevant to the use-case.\n\nThe main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole"
      },
      {
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "no-basis: Codes related to what function the Practitioner may perform\r\n\r\nRoles which this practitioner is authorized to perform for the organization."
      },
      {
        "id" : "PractitionerRole.code:functions",
        "path" : "PractitionerRole.code",
        "sliceName" : "functions",
        "definition" : "no-basis: Codes from urn:oid:2.16.578.1.12.4.1.1.9034 Helsepersonells funksjoner mv. (OID=9034)\r\n\r\nRoles which this practitioner is authorized to perform for the organization.",
        "alias" : ["helsepersonells funksjoner"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.9034"
        }
      },
      {
        "id" : "PractitionerRole.code:functions.coding.system",
        "path" : "PractitionerRole.code.coding.system",
        "short" : "Identity of the Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=9034)",
        "definition" : "The identification of the code system Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=9034)",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.9034"
      },
      {
        "id" : "PractitionerRole.code:functions.coding.code",
        "path" : "PractitionerRole.code.coding.code",
        "min" : 1
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "no-basis: code related to a speciality that the Practitioner can perform in the role within an organization\r\n\r\nSpecific specialty of the practitioner."
      },
      {
        "id" : "PractitionerRole.specialty:discipline",
        "path" : "PractitionerRole.specialty",
        "sliceName" : "discipline",
        "short" : "Specific discipline of practitioner",
        "definition" : "The Discipline the practitioner operates within the organization.",
        "alias" : ["fagområde"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "description" : "Specific discipline",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8451"
        }
      },
      {
        "id" : "PractitionerRole.specialty:discipline.coding.system",
        "path" : "PractitionerRole.specialty.coding.system",
        "short" : "The identification of the code system",
        "definition" : "The identification of the code system Fagområde (OID=8451)",
        "alias" : ["Fagområde"],
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8451"
      },
      {
        "id" : "PractitionerRole.specialty:discipline.coding.code",
        "path" : "PractitionerRole.specialty.coding.code",
        "min" : 1
      },
      {
        "id" : "PractitionerRole.endpoint",
        "path" : "PractitionerRole.endpoint",
        "definition" : "no-basis: don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource.\r\n\r\nTechnical endpoints providing access to services operated for the practitioner with this role."
      }
    ]
  }
}

```
