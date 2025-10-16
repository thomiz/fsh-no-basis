# Solid-Aresdoktor-RelatedPerson - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solid-Aresdoktor-RelatedPerson**

## Example RelatedPerson: Solid-Aresdoktor-RelatedPerson

Profile: [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)

**identifier**: `urn:oid:2.16.578.1.12.4.1.4.1`/15080050515

**patient**: Identifier: `urn:oid:2.16.578.1.12.4.1.4.1`/04021950128

**relationship**: Far, Far

**name**: SOLID ÆRESDOKTOR 

**address**: Nyhaugveien 3 BERGEN 5067 NO (home)



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "Solid-Aresdoktor-RelatedPerson",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/StructureDefinition/no-basis-RelatedPerson"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "15080050515"
    }
  ],
  "patient" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "04021950128"
    }
  },
  "relationship" : [
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/CodeSystem/no-basis-family-relation",
          "code" : "far"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility",
          "code" : "far"
        }
      ]
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
          "valueString" : "SKIKKELIG"
        }
      ],
      "family" : "ÆRESDOKTOR",
      "given" : ["SOLID"]
    }
  ],
  "address" : [
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "cadastralUnitNumber",
              "valueInteger" : 15
            },
            {
              "url" : "propertyUnitNumber",
              "valueInteger" : 557
            },
            {
              "url" : "municipality",
              "valueCoding" : {
                "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
                "code" : "1201",
                "display" : "Bergen"
              }
            }
          ],
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
        },
        {
          "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-address-official",
          "valueBoolean" : true
        }
      ],
      "use" : "home",
      "line" : ["Nyhaugveien 3"],
      "city" : "BERGEN",
      "district" : "BERGEN",
      "postalCode" : "5067",
      "country" : "NO"
    }
  ]
}

```
