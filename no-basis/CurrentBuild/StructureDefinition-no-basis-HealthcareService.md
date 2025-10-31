# no-basis-HealthcareService - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-HealthcareService**

## Resource Profile: no-basis-HealthcareService 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-HealthcareService | *Version*:2.2.3-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisHealthcareService |

 
Basisprofil for Norwegian Healthcare Service information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare Services. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 
The typical use-case is to include information regarding what Healthcare related services, support functions or activities provided by an Organization or awailable at a Location. 

**Usages:**

* Examples for this Profile: [HealthcareService/no-basis-HealthcareService-example](HealthcareService-no-basis-HealthcareService-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-HealthcareService)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-HealthcareService.csv), [Excel](StructureDefinition-no-basis-HealthcareService.xlsx), [Schematron](StructureDefinition-no-basis-HealthcareService.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-HealthcareService",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HealthcareService",
  "version" : "2.2.3-test",
  "name" : "NoBasisHealthcareService",
  "title" : "no-basis-HealthcareService",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian Healthcare Service information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare Services. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe typical use-case is to include information regarding what Healthcare related services, support functions or activities provided by an Organization or awailable at a Location.",
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
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HealthcareService",
        "path" : "HealthcareService",
        "definition" : "The details of a healthcare service available at a location. Should only be used for clinical healthcareservices offered by a PractitionerRole or by an Organization."
      },
      {
        "id" : "HealthcareService.identifier",
        "path" : "HealthcareService.identifier",
        "mustSupport" : false
      },
      {
        "id" : "HealthcareService.providedBy",
        "path" : "HealthcareService.providedBy",
        "definition" : "The organization that provides this healthcare service.\r\n\r\nno-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Organization"
            ]
          }
        ],
        "constraint" : [
          {
            "key" : "no-basis-providedBy-identifier",
            "severity" : "warning",
            "human" : "no-basis recommends the use of logical references by ENH or RESH identifiers. If providedBy exists, identifiers should exist.",
            "expression" : "$this.exists(identifier.exists())",
            "source" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HealthcareService"
          }
        ]
      },
      {
        "id" : "HealthcareService.providedBy.identifier",
        "path" : "HealthcareService.providedBy.identifier",
        "short" : "The logical reference of organization that provides this healthcare service.",
        "definition" : "no-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization.\r\n\r\nno-basis recommends if an identifier is provided the identifier type or system should be provided.",
        "constraint" : [
          {
            "key" : "no-basis-identifier-system",
            "severity" : "warning",
            "human" : "no-basis recommends the use of urn:oid:2.16.578.1.12.4.1.4.101 (ENH) or urn:oid:2.16.578.1.12.4.1.4.102 (RESH) for identifier.system",
            "expression" : "$this.exists(system = 'urn:oid:2.16.578.1.12.4.1.4.101' or system = 'urn:oid:2.16.578.1.12.4.1.4.102')",
            "source" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HealthcareService"
          }
        ]
      },
      {
        "id" : "HealthcareService.category",
        "path" : "HealthcareService.category",
        "short" : "HealthcareService category",
        "definition" : "Example of category. Helsevirksomhet type (OID=9040), identifies the virksomhetstype used in Adresseregisteret. This element is usually not necessary to describe the HealthcareService adequately.",
        "alias" : ["virksomhetstype"],
        "binding" : {
          "strength" : "example",
          "description" : "virksomhetstype 9040",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.9040"
        }
      },
      {
        "id" : "HealthcareService.type",
        "path" : "HealthcareService.type",
        "definition" : "no-basis: This element is usually not necessary to describe the HealthcareService adequately. Further coding can be used when common set of SNOMED codes are agreed for healthc care service types.\r\n\r\nThe specific type of service that may be delivered or performed."
      },
      {
        "id" : "HealthcareService.specialty",
        "path" : "HealthcareService.specialty",
        "definition" : "no-basis: Helsehjelpområde is given by the specialty element, preferred coding includes 8655 and 8654 codesystems. Type and category is usually not necessary to describe the HealthcareService adequately.\r\n\r\nThe specific type defined in a codesystem allowed included in the valueset.",
        "alias" : ["helsehjelpsområde"]
      },
      {
        "id" : "HealthcareService.specialty.coding",
        "path" : "HealthcareService.specialty.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "description" : "Two possible codings are given for the type element",
          "rules" : "open"
        }
      },
      {
        "id" : "HealthcareService.specialty.coding:8655",
        "path" : "HealthcareService.specialty.coding",
        "sliceName" : "8655",
        "short" : "Code describing the Helsehjelpområde",
        "definition" : "no-basis: Helsehjelpsområde (OID=8655) used to code the kind of clinical service the organization offers the patients through this HealthcareService\r\nAlso use Klinisk/medisinsk service (OID=8654)?",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "description" : "Helsehjelpsområde",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8655"
        }
      },
      {
        "id" : "HealthcareService.specialty.coding:8655.system",
        "path" : "HealthcareService.specialty.coding.system",
        "short" : "Identity of the 8655 codesystem",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8655"
      },
      {
        "id" : "HealthcareService.specialty.coding:8655.code",
        "path" : "HealthcareService.specialty.coding.code",
        "min" : 1
      },
      {
        "id" : "HealthcareService.specialty.coding:8654",
        "path" : "HealthcareService.specialty.coding",
        "sliceName" : "8654",
        "definition" : "Klinisk/medisinsk service (OID=8654)",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "description" : "Klinisk/medisinsk service",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8654"
        }
      },
      {
        "id" : "HealthcareService.specialty.coding:8654.system",
        "path" : "HealthcareService.specialty.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8654"
      },
      {
        "id" : "HealthcareService.specialty.coding:8654.code",
        "path" : "HealthcareService.specialty.coding.code",
        "min" : 1
      },
      {
        "id" : "HealthcareService.specialty.coding:9151",
        "path" : "HealthcareService.specialty.coding",
        "sliceName" : "9151",
        "definition" : "IPLOS tjenestetype (OID=9151)",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "description" : "IPLOS tjenestetype",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.9151"
        }
      },
      {
        "id" : "HealthcareService.specialty.coding:9151.system",
        "path" : "HealthcareService.specialty.coding.system",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.9151"
      },
      {
        "id" : "HealthcareService.specialty.coding:9151.code",
        "path" : "HealthcareService.specialty.coding.code",
        "min" : 1
      },
      {
        "id" : "HealthcareService.specialty.coding:8451",
        "path" : "HealthcareService.specialty.coding",
        "sliceName" : "8451",
        "definition" : "Fagområde (OID=8451)",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "description" : "Fagområde",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8451"
        }
      },
      {
        "id" : "HealthcareService.specialty.coding:8451.system",
        "path" : "HealthcareService.specialty.coding.system",
        "definition" : "The identification of the Fagområde (OID=8451) code system.",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.8451"
      },
      {
        "id" : "HealthcareService.specialty.coding:8451.code",
        "path" : "HealthcareService.specialty.coding.code",
        "min" : 1
      },
      {
        "id" : "HealthcareService.location",
        "path" : "HealthcareService.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Location",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Location"
            ]
          }
        ]
      },
      {
        "id" : "HealthcareService.endpoint",
        "path" : "HealthcareService.endpoint",
        "definition" : "no-basis: In Norway endpoints for communication should be connected to a kommunikasjonspart-Organization identified with HERid and collected from the Norwegian Address register. Endpoints not registered in the Norwegian Address register can use other schemes of connecting endpoints to Organizations, PractitionerRole or HealthcareService.\r\n\r\nTechnical endpoints providing access to services operated for the specific healthcare services defined at this resource.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Endpoint",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Endpoint"
            ]
          }
        ],
        "mustSupport" : false
      }
    ]
  }
}

```
