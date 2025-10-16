# no-basis-Organization - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Organization**

## Resource Profile: no-basis-Organization 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Organization | *Version*:2.2.2-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisOrganization |

 
Basisprofil for Norwegian Organization information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The basis profile describes information structures typically used for identifying norwegian organizations. Should be used as a basis for further profiling in use-cases where other specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Refer to this Profile: [no-basis-Endpoint](StructureDefinition-no-basis-Endpoint.md), [no-basis-HealthcareService](StructureDefinition-no-basis-HealthcareService.md), [no-basis-Location](StructureDefinition-no-basis-Location.md) and [no-basis-Organization](StructureDefinition-no-basis-Organization.md)
* Examples for this Profile: [Direktoratet for e-Helse](Organization-Direktoratet-for-eHelse-Organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Organization.csv), [Excel](StructureDefinition-no-basis-Organization.xlsx), [Schematron](StructureDefinition-no-basis-Organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Organization",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2020-04-22T10:49:58.004+00:00"
  },
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Organization",
  "version" : "2.2.2-test",
  "name" : "NoBasisOrganization",
  "title" : "no-basis-Organization",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian Organization information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The basis profile describes information structures typically used for identifying norwegian organizations. Should be used as a basis for further profiling in use-cases where other specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
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
        "id" : "Organization.identifier:ENH",
        "path" : "Organization.identifier",
        "sliceName" : "ENH",
        "short" : "Organisasjonsnummer from Enhetsregisteret",
        "alias" : ["organisasjonsnummer", "organization number"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:ENH.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.101"
      },
      {
        "id" : "Organization.identifier:ENH.value",
        "path" : "Organization.identifier.value",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:RSH",
        "path" : "Organization.identifier",
        "sliceName" : "RSH",
        "short" : "Nasjonalt register over enheter i spesialisthelsetjenesten (RESH-ID)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:RSH.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.102"
      },
      {
        "id" : "Organization.identifier:RSH.value",
        "path" : "Organization.identifier.value",
        "min" : 1
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "no-basis provides two commonly used slices to indicate Organization.type. Both ValueSets are used in the Norweian realm and is currently maintained at Volven.no: \r\n- Organisatorisk nivå (OID=8628)\r\n- Organisatorisk betegnelse (OID=8624)\r\n\r\nThe kind(s) of organization that this is."
      },
      {
        "id" : "Organization.type:organisatoriskNiva",
        "path" : "Organization.type",
        "sliceName" : "organisatoriskNiva",
        "short" : "Organisatorisk nivå",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8628"
        }
      },
      {
        "id" : "Organization.type:organisatoriskNiva.coding.system",
        "path" : "Organization.type.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8628"
      },
      {
        "id" : "Organization.type:organisatoriskNiva.coding.code",
        "path" : "Organization.type.coding.code",
        "min" : 1
      },
      {
        "id" : "Organization.type:organisatoriskBetegnelse",
        "path" : "Organization.type",
        "sliceName" : "organisatoriskBetegnelse",
        "short" : "Organisatorisk betegnelse",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8624"
        }
      },
      {
        "id" : "Organization.type:organisatoriskBetegnelse.coding.system",
        "path" : "Organization.type.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8624"
      },
      {
        "id" : "Organization.type:organisatoriskBetegnelse.coding.code",
        "path" : "Organization.type.coding.code",
        "min" : 1
      },
      {
        "id" : "Organization.address",
        "path" : "Organization.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Address"]
          }
        ]
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
            ]
          }
        ]
      },
      {
        "id" : "Organization.contact.address",
        "path" : "Organization.contact.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Address"]
          }
        ]
      },
      {
        "id" : "Organization.endpoint",
        "path" : "Organization.endpoint",
        "definition" : "Technical endpoints providing access to services operated for the organization.\r\n\r\nno-basis don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource."
      }
    ]
  }
}

```
