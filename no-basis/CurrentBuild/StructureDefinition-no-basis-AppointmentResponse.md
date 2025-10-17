# no-basis-AppointmentResponse - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-AppointmentResponse**

## Resource Profile: no-basis-AppointmentResponse 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-AppointmentResponse | *Version*:2.2.2-test |
| Active as of 2025-10-17 | *Computable Name*:NoBasisAppointmentResponse |

 
Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to each use-case. 

**Usages:**

* Examples for this Profile: [AppointmentResponse/PatientAppointmentResponseExample](AppointmentResponse-PatientAppointmentResponseExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-AppointmentResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-AppointmentResponse.csv), [Excel](StructureDefinition-no-basis-AppointmentResponse.xlsx), [Schematron](StructureDefinition-no-basis-AppointmentResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-AppointmentResponse",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-AppointmentResponse",
  "version" : "2.2.2-test",
  "name" : "NoBasisAppointmentResponse",
  "title" : "no-basis-AppointmentResponse",
  "status" : "active",
  "date" : "2025-10-17T20:41:05+00:00",
  "description" : "Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to each use-case.",
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
  "type" : "AppointmentResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AppointmentResponse",
        "path" : "AppointmentResponse",
        "constraint" : [
          {
            "key" : "inv-1",
            "severity" : "error",
            "human" : "The 'shortNotice' extension can only be used when the 'actor' is of type 'Patient'.",
            "expression" : "extension.where(url = 'http://example.org/StructureDefinition/no-basis-shortnotice').value.exists() and actor.type = 'Patient'",
            "source" : "http://hl7.no/fhir/StructureDefinition/no-basis-AppointmentResponse"
          }
        ]
      },
      {
        "id" : "AppointmentResponse.extension",
        "path" : "AppointmentResponse.extension",
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
        "id" : "AppointmentResponse.extension:shortNotice",
        "path" : "AppointmentResponse.extension",
        "sliceName" : "shortNotice",
        "definition" : "Patient can come on short notice.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-shortnotice"
            ]
          }
        ]
      },
      {
        "id" : "AppointmentResponse.extension:shortNotice.value[x]",
        "path" : "AppointmentResponse.extension.value[x]",
        "definition" : "Patient can come on short notice. Response is boolean"
      }
    ]
  }
}

```
