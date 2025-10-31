# Direktoratet-for-eHelse-Organization - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Direktoratet-for-eHelse-Organization**

## Example Organization: Direktoratet-for-eHelse-Organization

Profile: [no-basis-Organization](StructureDefinition-no-basis-Organization.md)

**identifier**: `urn:oid:2.16.578.1.12.4.1.4.101`/915933149

**name**: Direktoratet for e-Helse

**address**: 

* Postboks 221 Skøyen OSLO 0213 
* Verkstedveien 1 OSLO 0277 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "a70f0ba2-44d8-4f14-9c3a-ff4c6ead7472",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Organization"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "915933149"
    }
  ],
  "name" : "Direktoratet for e-Helse",
  "address" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
          "valueBoolean" : true
        }
      ],
      "type" : "postal",
      "line" : ["Postboks 221 Skøyen"],
      "city" : "OSLO",
      "postalCode" : "0213"
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
          "valueBoolean" : true
        }
      ],
      "type" : "physical",
      "line" : ["Verkstedveien 1"],
      "city" : "OSLO",
      "postalCode" : "0277"
    }
  ]
}

```
