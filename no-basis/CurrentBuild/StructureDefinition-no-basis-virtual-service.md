# no-basis-virtual-service - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-virtual-service**

## Extension: no-basis-virtual-service 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-virtual-service | *Version*:2.2.2-test |
| Active as of 2025-10-16 | *Computable Name*:NoBasisVirtualService |

The VirtualService is based on VirtualServiceDetail structure from R5 and defines details of a virtual communication capability, such as a web conference call.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Appointment](StructureDefinition-no-basis-Appointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-virtual-service)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-virtual-service.csv), [Excel](StructureDefinition-no-basis-virtual-service.xlsx), [Schematron](StructureDefinition-no-basis-virtual-service.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-virtual-service",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-virtual-service",
  "version" : "2.2.2-test",
  "name" : "NoBasisVirtualService",
  "title" : "no-basis-virtual-service",
  "status" : "active",
  "date" : "2025-10-16T20:37:15+00:00",
  "description" : "The VirtualService is based on VirtualServiceDetail structure from R5 and defines details of a virtual communication capability, such as a web conference call.",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Virtual Service",
        "definition" : "The VirtualService structure defines details of a virtual communication capability, such as a web conference call."
      },
      {
        "id" : "Extension.extension:channelType",
        "path" : "Extension.extension",
        "sliceName" : "channelType",
        "short" : "Channel Type",
        "definition" : "The type of virtual service to connect to.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:channelType.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:channelType.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "channelType"
      },
      {
        "id" : "Extension.extension:channelType.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Valuset for virtual servie.",
        "definition" : "The valuesett inherits all codes from http://hl7.org/fhir/contact-point-system and http://hl7.org/fhir/virtual-service-type. Virtual-service-type is from R5. ",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-virtual-service-type"
        }
      },
      {
        "id" : "Extension.extension:virtualAddress",
        "path" : "Extension.extension",
        "sliceName" : "virtualAddress",
        "short" : "Contact address/number",
        "definition" : "Address or number needs to be used for a user to connect to the virtual service to join. ",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:virtualAddress.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:virtualAddress.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "virtualAddress"
      },
      {
        "id" : "Extension.extension:virtualAddress.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          },
          {
            "code" : "url"
          },
          {
            "code" : "ContactPoint"
          }
        ]
      },
      {
        "id" : "Extension.extension:additionalInfo",
        "path" : "Extension.extension",
        "sliceName" : "additionalInfo",
        "short" : "Address to see alternative connection details",
        "definition" : "Address to see alternative connection details. ",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:additionalInfo.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:additionalInfo.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "additionalInfo"
      },
      {
        "id" : "Extension.extension:additionalInfo.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "url"
          }
        ]
      },
      {
        "id" : "Extension.extension:maxParticipants",
        "path" : "Extension.extension",
        "sliceName" : "maxParticipants",
        "short" : "Maximum number of participants supported by the virtual service.",
        "definition" : "Maximum number of participants supported by the virtual service. ",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:maxParticipants.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:maxParticipants.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "maxParticipants"
      },
      {
        "id" : "Extension.extension:maxParticipants.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "positiveInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:sessionKey",
        "path" : "Extension.extension",
        "sliceName" : "sessionKey",
        "short" : "Session Key required by the virtual service",
        "definition" : "Session Key required by the virtual service. ",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:sessionKey.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:sessionKey.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "sessionKey"
      },
      {
        "id" : "Extension.extension:sessionKey.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-virtual-service"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
