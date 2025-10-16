# no-basis-Endpoint - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Endpoint**

## Resource Profile: no-basis-Endpoint 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Endpoint | *Version*:2.2.2-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisEndpoint |

 
Basisprofil for Norwegian Endpoint information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Endpoing. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 
Resource profile for definition of electronic endpoints used by healthcare organizations to communicate using different protocols. The norwegian profile use-case is to represent endpoints for electronic communication. Fallback solutions using mail or fax has to be indexed in the norwegian master index for healthcare organizations and are not described using this profile. 

**Usages:**

* Refer to this Profile: [no-basis-HealthcareService](StructureDefinition-no-basis-HealthcareService.md) and [no-basis-Location](StructureDefinition-no-basis-Location.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Endpoint)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Endpoint.csv), [Excel](StructureDefinition-no-basis-Endpoint.xlsx), [Schematron](StructureDefinition-no-basis-Endpoint.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Endpoint",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Endpoint",
  "version" : "2.2.2-test",
  "name" : "NoBasisEndpoint",
  "title" : "no-basis-Endpoint",
  "status" : "active",
  "date" : "2019-05-15",
  "description" : "Basisprofil for Norwegian Endpoint information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Endpoing. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nResource profile for definition of electronic endpoints used by healthcare organizations to communicate using different protocols. The norwegian profile use-case is to represent endpoints for electronic communication. Fallback solutions using mail or fax has to be indexed in the norwegian master index for healthcare organizations and are not described using this profile.",
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
  "type" : "Endpoint",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Endpoint",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Endpoint",
        "path" : "Endpoint",
        "definition" : "The no-basis profile of the Endpoint resource makes it possible to use the resource for the norwegian service based adressing (tjenestebasert adressering) and other adressing schemes.\r\n\r\nThe technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information."
      },
      {
        "id" : "Endpoint.identifier",
        "path" : "Endpoint.identifier",
        "comment" : "no-basis: Adresseregisteret do not provide a identifier for the Endpoints, so any identifier scheme is apropriate."
      },
      {
        "id" : "Endpoint.connectionType",
        "path" : "Endpoint.connectionType",
        "definition" : "no-basis:  the connection type should be coded according to http://hl7.org/fhir/ValueSet/endpoint-connection-type. However specific connection types used in Norway can be coded according to http://hl7.no/fhir/ValueSet/no-basis-endpoint-connection-type (amqp, ebxml etc.)\r\n\r\nA coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook).",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-connection-type"
        }
      },
      {
        "id" : "Endpoint.managingOrganization",
        "path" : "Endpoint.managingOrganization",
        "definition" : "The organization that manages this endpoint (even if technically another organisation is hosting this in the cloud, it is the organisation associated with the data).\r\n\r\nno-basis: In Norway this relates to the organization with the responsibility for the data e.g. \"dataansvarlig\".\r\nno-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization.",
        "alias" : ["dataansvarlig"],
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.no/fhir/StructureDefinition/no-basis-Organization"
            ]
          }
        ]
      },
      {
        "id" : "Endpoint.payloadType",
        "path" : "Endpoint.payloadType",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "no-basis: for ebXML and AMQP messages in Norway one is expected to list all mesage types that the endpoint supports using the CodeSystem Meldingens funksjon (OID=8279) as a minimum. To describe complete version information to determine the type and version of the messages the endpoint supports, a CapabilityStatement can be used to describe the endpoints communication capabilities in detail.\r\nREST endpoints are expected to use the code \"any\" from https://www.hl7.org/fhir/codesystem-endpoint-payload-type.html. Proper FHIR Restful API's are expected to serve a CapabilityStatement from the base uri specified.\r\nOther payload types can be given using codes from the ValueSet http://hl7.org/fhir/ValueSet/endpoint-payload-type. \r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint."
      },
      {
        "id" : "Endpoint.payloadType:meldingensFunksjon",
        "path" : "Endpoint.payloadType",
        "sliceName" : "meldingensFunksjon",
        "definition" : "no-basis: for ebXML and AMQP messages in Norway one is expected to list all mesage types that the endpoint supports using the CodeSystem Meldingens funksjon (OID=8279). Version information (version of the payload document) shold be given in the coding.version element.\r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint.",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.8279"
        }
      },
      {
        "id" : "Endpoint.payloadType:formatCode",
        "path" : "Endpoint.payloadType",
        "sliceName" : "formatCode",
        "short" : "Specific information about payload type and version",
        "definition" : "no-basis: Specific information about payload type and version. Information about the payload type and version for ebxml and amqp messages\r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint.",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.0000"
        }
      },
      {
        "id" : "Endpoint.payloadMimeType",
        "path" : "Endpoint.payloadMimeType",
        "definition" : "no-basis: should we list relevant codes for ebXML messages? List appropriate media types for FHIR REST endpoints?\r\nXML: application/fhir+xml\r\nJSON: application/fhir+json\r\nRDF: application/fhir+turtle\r\nebXML messages: text/xml\r\n\r\nThe mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType).",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://www.rfc-editor.org/bcp/bcp13.txt"
        }
      },
      {
        "id" : "Endpoint.address",
        "path" : "Endpoint.address",
        "definition" : "The uri that describes the actual end-point to connect to.\r\n\r\nno-basis: for ebXML messages in Norway one is expected to use mailto: prefix for the endpoint. \r\nFor AMQP messages in Norway one is expected to use \"ampq://\" or \"amqps://\" prefix.\r\nREST endpoints will have \"http://\" or \"https://\" prefix.",
        "example" : [
          {
            "label" : "amqp endpoint",
            "valueUrl" : "amqp_endpoint"
          },
          {
            "label" : "ebxml endpoint",
            "valueUrl" : "ebxml_endpoint"
          },
          {
            "label" : "REST endpoint",
            "valueUrl" : "REST_endpoint"
          }
        ]
      }
    ]
  }
}

```
