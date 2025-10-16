# no-basis-connection-type.codesystem - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-connection-type.codesystem**

## CodeSystem: no-basis-connection-type.codesystem 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/CodeSystem/no-basis-connection-type | *Version*:2.2.2-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisConnectionType |

 
Codes to describe Norwegian message based communication protocols. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NoBasisConnectionType](ValueSet-no-basis-connection-type.valueset.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "no-basis-connection-type.codesystem",
  "url" : "http://hl7.no/fhir/CodeSystem/no-basis-connection-type",
  "version" : "2.2.2-test",
  "name" : "NoBasisConnectionType",
  "title" : "no-basis-connection-type.codesystem",
  "status" : "active",
  "date" : "2019-05-15T00:00:00+00:00",
  "description" : "Codes to describe Norwegian message based communication protocols.",
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
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "no-ebxml-2",
      "display" : "ebXML 2.0",
      "definition" : "ebXML messaging as described in the Norwegian profile HIS 1037:2011 based on OASIS ebMS 2.0 specification"
    },
    {
      "code" : "no-amqp",
      "display" : "AMQP",
      "definition" : "AMQP based synchronuous and asynchronus message delivery"
    }
  ]
}

```
