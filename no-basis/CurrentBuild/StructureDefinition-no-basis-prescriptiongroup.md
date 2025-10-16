# no-basis-prescriptiongroup - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-prescriptiongroup**

## Extension: no-basis-prescriptiongroup 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-prescriptiongroup | *Version*:2.2.2-test |
| Active as of 2019-07-03 | *Computable Name*:NoBasisPrescriptiongroup |

Part of norwegian standard for describing a prescription.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Medication](StructureDefinition-no-basis-Medication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-prescriptiongroup)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-prescriptiongroup.csv), [Excel](StructureDefinition-no-basis-prescriptiongroup.xlsx), [Schematron](StructureDefinition-no-basis-prescriptiongroup.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-prescriptiongroup",
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-prescriptiongroup",
  "version" : "2.2.2-test",
  "name" : "NoBasisPrescriptiongroup",
  "title" : "no-basis-prescriptiongroup",
  "status" : "active",
  "date" : "2019-07-03",
  "description" : "Part of norwegian standard for describing a prescription.",
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
      "expression" : "Medication"
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
        "short" : "Describes the group the medication is within",
        "definition" : "Prescription group"
      },
      {
        "id" : "Extension.extension:prescriptiongroup",
        "path" : "Extension.extension",
        "sliceName" : "prescriptiongroup",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:prescriptiongroup.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:prescriptiongroup.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "prescriptiongroup"
      },
      {
        "id" : "Extension.extension:prescriptiongroup.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:prescriptiongroup.value[x].coding.system",
        "path" : "Extension.extension.value[x].coding.system",
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.1.7421"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/StructureDefinition/no-basis-prescriptiongroup"
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
