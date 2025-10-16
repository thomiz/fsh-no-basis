# Sorgard-Erlend-RelatedPerson - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sorgard-Erlend-RelatedPerson**

## Example RelatedPerson: Sorgard-Erlend-RelatedPerson

Profile: [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)

> **no-basis-person-citizenship**
* code: Norway

**identifier**: `urn:oid:2.16.578.1.12.4.1.4.1`/05073500186

**patient**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.1`/04021950128

**relationship**: Gift

**name**: Ærlend Sørgård 



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "Sorgard-Erlend-RelatedPerson",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "urn:iso:std:iso:3166",
                "code" : "NO"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-person-citizenship"
    }
  ],
  "identifier" : [
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "05073500186"
    }
  ],
  "patient" : {
    "extension" : [
      {
        "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference",
        "valueReference" : {
          "identifier" : {
            "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
            "value" : "04021950128"
          }
        }
      }
    ],
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "04021950128"
    }
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/CodeSystem/no-basis-marital-status",
          "code" : "gift"
        }
      ]
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
          "valueString" : "Pårørende"
        }
      ],
      "family" : "Sørgård",
      "given" : ["Ærlend"]
    }
  ]
}

```
