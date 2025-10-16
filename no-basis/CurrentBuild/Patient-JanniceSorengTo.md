# JanniceSorengTo - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JanniceSorengTo**

## Example Patient: JanniceSorengTo

Profile: [no-basis-Patient](StructureDefinition-no-basis-Patient.md)

Jannice SørengTo Female, DoB Unknown ( urn:oid:2.16.578.1.12.4.1.4.1#21030550231)

-------

| | |
| :--- | :--- |
| Marital Status: | unmarried |
| Other Id: | `http://profil.visma.no/lopenummer`/123 |
| Contact Detail | * [+4733445566](tel:+4733445566)
* Karisvingen 44 Oslo 0603 NO (home)
 |
| Language: | Norsk |
| Contact: | * Pål Pårørende Olsen
* Relationships:Emergency Contact, Bror
 |
| Links: | * General Practitioner: SIDSEL AASE JAVERY (Identifier: `urn:oid:2.16.578.1.12.4.1.2`/720)
 |
| Patient Citizenship: | * code: Norway
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "JanniceSorengTo",
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
      "value" : "21030550231"
    },
    {
      "system" : "http://profil.visma.no/lopenummer",
      "value" : "123"
    }
  ],
  "name" : [
    {
      "family" : "SørengTo",
      "given" : ["Jannice"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+4733445566",
      "use" : "home"
    }
  ],
  "gender" : "female",
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
      "line" : ["Karisvingen 44"],
      "city" : "Oslo",
      "district" : "Oslo",
      "_district" : {
        "extension" : [
          {
            "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode",
            "valueCoding" : {
              "system" : "https://register.geonorge.no/subregister/sosi-kodelister/kartverket/kommunenummer-alle",
              "code" : "0301"
            }
          }
        ]
      },
      "postalCode" : "0603",
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
  "contact" : [
    {
      "relationship" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
              "code" : "C",
              "display" : "Emergency Contact"
            }
          ]
        },
        {
          "text" : "Bror"
        }
      ],
      "name" : {
        "extension" : [
          {
            "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
            "valueString" : "Pårørende"
          }
        ],
        "text" : "Pål Pårørende Olsen",
        "family" : "Olsen",
        "given" : ["Pål"]
      }
    }
  ],
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
