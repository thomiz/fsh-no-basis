# EspenEksempel - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EspenEksempel**

## Example Patient: EspenEksempel

Profile: [no-basis-Patient](StructureDefinition-no-basis-Patient.md)

Espen Eksempel Male, DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#210377xxxxx)

-------

| | |
| :--- | :--- |
| Marital Status: | unmarried |
| Contact Detail | * [+4798216832](tel:+4798216832)
* Stålverkskroken 14 Oslo 0661 NO (home)
 |
| Language: | Norsk |
| Links: | * General Practitioner: SIDSEL AASE JAVERY (Identifier: `urn:oid:2.16.578.1.12.4.1.2`/720)
 |
| Patient Citizenship: | * code: Norway
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EspenEksempel",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Patient"]
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
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
    }
  ],
  "identifier" : [
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "210377xxxxx"
    }
  ],
  "name" : [
    {
      "family" : "Eksempel",
      "given" : ["Espen"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+4798216832",
      "use" : "home"
    }
  ],
  "gender" : "male",
  "address" : [
    {
      "extension" : [
        {
          "extension" : [
            {
              "url" : "municipality",
              "valueCoding" : {
                "system" : "urn:oid:2.16.578.1.12.4.1.1.3402",
                "code" : "0301",
                "display" : "Oslo"
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
      "line" : ["Stålverkskroken 14"],
      "city" : "Oslo",
      "district" : "Oslo",
      "postalCode" : "0661",
      "country" : "NO"
    }
  ],
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "code" : "U",
        "display" : "unmarried"
      }
    ]
  },
  "communication" : [
    {
      "language" : {
        "text" : "Norsk"
      }
    }
  ],
  "generalPractitioner" : [
    {
      "identifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.2",
        "value" : "720"
      },
      "display" : "SIDSEL AASE JAVERY"
    }
  ]
}

```
