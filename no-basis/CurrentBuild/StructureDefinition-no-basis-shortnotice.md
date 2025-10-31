# no-basis-shortnotice - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-shortnotice**

## Extension: no-basis-shortnotice 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-shortnotice | *Version*:2.2.3-test |
| Active as of 2025-10-31 | *Computable Name*:NoBasisShortNotice |

The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-AppointmentResponse](StructureDefinition-no-basis-AppointmentResponse.md)
* Examples for this Extension: [AppointmentResponse/PatientAppointmentResponseExample](AppointmentResponse-PatientAppointmentResponseExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-shortnotice)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-shortnotice.csv), [Excel](StructureDefinition-no-basis-shortnotice.xlsx), [Schematron](StructureDefinition-no-basis-shortnotice.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-shortnotice",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-shortnotice",
  "version" : "2.2.3-test",
  "name" : "NoBasisShortNotice",
  "title" : "no-basis-shortnotice",
  "status" : "active",
  "date" : "2025-10-31T06:29:19+00:00",
  "description" : "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots.",
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
      "expression" : "AppointmentResponse"
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
        "max" : "1"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-shortnotice"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "Patient can come on short notice.",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      }
    ]
  }
}

```
