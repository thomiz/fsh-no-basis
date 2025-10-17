# no-basis-Appointment - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Appointment**

## Resource Profile: no-basis-Appointment 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Appointment | *Version*:2.2.2-test |
| Active as of 2025-10-17 | *Computable Name*:NoBasisAppointment |

 
Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) can be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Refer to this Profile: [no-basis-partof](StructureDefinition-no-basis-partof.md)
* Examples for this Profile: [Appointment/d6c523ec-b520-4221-a8d6-c1c58911ce7a](Appointment-d6c523ec-b520-4221-a8d6-c1c58911ce7a.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Appointment)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Appointment.csv), [Excel](StructureDefinition-no-basis-Appointment.xlsx), [Schematron](StructureDefinition-no-basis-Appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Appointment",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Appointment",
  "version" : "2.2.2-test",
  "name" : "NoBasisAppointment",
  "title" : "no-basis-Appointment",
  "status" : "active",
  "date" : "2025-10-17T20:15:52+00:00",
  "description" : "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) can be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
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
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment",
        "path" : "Appointment"
      },
      {
        "id" : "Appointment.extension",
        "path" : "Appointment.extension",
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
        "id" : "Appointment.extension:virtualService",
        "path" : "Appointment.extension",
        "sliceName" : "virtualService",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-virtual-service"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.extension:group",
        "path" : "Appointment.extension",
        "sliceName" : "group",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-group"]
          }
        ]
      },
      {
        "id" : "Appointment.extension:partOf",
        "path" : "Appointment.extension",
        "sliceName" : "partOf",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-partof"]
          }
        ]
      },
      {
        "id" : "Appointment.appointmentType.coding",
        "path" : "Appointment.appointmentType.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "short" : "Recomended code systems for no-basis-Appointment.",
        "definition" : "Recomended code systems for no-basis-Appointment. The recomended code systems might not be suficient for defining appointment type and in an implemented profile - some other coding might be needed."
      },
      {
        "id" : "Appointment.appointmentType.coding:omsorgsNiva",
        "path" : "Appointment.appointmentType.coding",
        "sliceName" : "omsorgsNiva",
        "short" : "Volven 8406",
        "definition" : "Omsorgsnivå (OID=8406).",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "description" : "Volven",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8406"
        }
      },
      {
        "id" : "Appointment.appointmentType.coding:kontaktType",
        "path" : "Appointment.appointmentType.coding",
        "sliceName" : "kontaktType",
        "short" : "Volven 8432",
        "definition" : "Kontakttype (OID=8432)",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "description" : "Volven",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8432"
        }
      },
      {
        "id" : "Appointment.appointmentType.coding:innbygger",
        "path" : "Appointment.appointmentType.coding",
        "sliceName" : "innbygger",
        "short" : "Volven 7617",
        "definition" : "Timetype innbyggerportal (OID=7617)",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "description" : "Volven",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.7617"
        }
      }
    ]
  }
}

```
