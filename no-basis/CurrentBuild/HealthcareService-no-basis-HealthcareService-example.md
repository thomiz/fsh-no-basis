# no-basis-HealthcareService-example - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-HealthcareService-example**

## Example HealthcareService: no-basis-HealthcareService-example

Profile: [no-basis-HealthcareService](StructureDefinition-no-basis-HealthcareService.md)

**identifier**: `http://hl7.no/shared-ids`/HS-12

**active**: true

**providedBy**: [Direktoratet for e-Helse](Organization/915933149)

**category**: Helseforetak/private sykehus

**specialty**: Ortopedisk kirurgi



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "no-basis-HealthcareService-example",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/StructureDefinition/no-basis-HealthcareService"
    ]
  },
  "identifier" : [
    {
      "system" : "http://hl7.no/shared-ids",
      "value" : "HS-12"
    }
  ],
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/915933149",
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "test"
    },
    "display" : "Direktoratet for e-Helse"
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.9040",
          "code" : "101",
          "display" : "Helseforetak/private sykehus"
        }
      ]
    }
  ],
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "urn:oid:2.16.578.1.12.4.1.1.8655",
          "code" : "S0208",
          "display" : "Ortopedisk kirurgi"
        }
      ]
    }
  ]
}

```
