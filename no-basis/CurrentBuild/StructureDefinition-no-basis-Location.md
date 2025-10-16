# no-basis-Location - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Location**

## Resource Profile: no-basis-Location 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Location | *Version*:2.2.2-test |
| Active as of 2019-01-31 | *Computable Name*:NoBasisLocation |

 
Basisprofil for Norwegian Location information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific location information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Refer to this Profile: [no-basis-HealthcareService](StructureDefinition-no-basis-HealthcareService.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Location)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Location.csv), [Excel](StructureDefinition-no-basis-Location.xlsx), [Schematron](StructureDefinition-no-basis-Location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Location",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Location",
  "version" : "2.2.2-test",
  "name" : "NoBasisLocation",
  "title" : "no-basis-Location",
  "status" : "active",
  "date" : "2019-01-31",
  "description" : "Basisprofil for Norwegian Location information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific location information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location",
        "definition" : "Details and position information for a physical place where services are provided  and resources and participants may be stored, found, contained or \r\naccommodated.\r\n\r\nno-basis: The use-case for no-basis-Location is representation of organization structure to describe where a specific department or healthcare service is offered."
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Address"]
          }
        ]
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
            ],
            "versioning" : "specific"
          }
        ]
      },
      {
        "id" : "Location.endpoint",
        "path" : "Location.endpoint",
        "definition" : "no-basis don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource.\r\n\r\nTechnical endpoints providing access to services operated for the location.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Endpoint",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Endpoint"
            ]
          }
        ]
      }
    ]
  }
}

```
