# no-basis-Procedure-example - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Procedure-example**

## Example Procedure: no-basis-Procedure-example

Profile: [no-basis-Procedure](StructureDefinition-no-basis-Procedure.md)

**status**: Completed

**code**: Colonoscopy (procedure)

**subject**: [Patient/example](Patient/example)

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Primary performing endoscopist (person) | [Practitioner/example](Practitioner/example) |

**bodySite**: TC - Transverse colon



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "no-basis-Procedure-example",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/StructureDefinition/no-basis-Procedure"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "73761001",
        "display" : "Colonoscopy (procedure)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performer" : [
    {
      "function" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "8921000202108",
            "display" : "Primary performing endoscopist (person)"
          }
        ]
      },
      "actor" : {
        "reference" : "Practitioner/example"
      }
    }
  ],
  "bodySite" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "485005",
          "display" : "TC - Transverse colon"
        }
      ]
    }
  ]
}

```
