# Magnar-Komann-Practitioner - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Magnar-Komann-Practitioner**

## Example Practitioner: Magnar-Komann-Practitioner

Profile: [no-basis-Practitioner](StructureDefinition-no-basis-Practitioner.md)

**identifier**: `urn:oid:2.16.578.1.12.4.1.4.4`/9144889

**name**: Magnar Koman 

**telecom**: ph: 75589889(Work), fax: 75589899, ph: 98128921(Mobile), [mako@bottomline.no](mailto:mako@bottomline.no)

**address**: Dreyfushammarn 23 BODØ 8012 (work)

> **qualification****code**:Lege

> **qualification****code**:Allmennmedisin

> **qualification****code**:Autorisasjon**period**: 2018-10-10 --> (ongoing)

> **qualification****code**:Ortopedisk kirurgi



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "Magnar-Komann-Practitioner",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/StructureDefinition/no-basis-Practitioner"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
      "value" : "9144889"
    }
  ],
  "name" : [
    {
      "family" : "Koman",
      "given" : ["Magnar"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "75589889",
      "use" : "work"
    },
    {
      "system" : "fax",
      "value" : "75589899"
    },
    {
      "system" : "phone",
      "value" : "98128921",
      "use" : "mobile"
    },
    {
      "system" : "email",
      "value" : "mako@bottomline.no",
      "use" : "work"
    }
  ],
  "address" : [
    {
      "use" : "work",
      "line" : ["Dreyfushammarn 23"],
      "city" : "BODØ",
      "postalCode" : "8012"
    }
  ],
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:oid:2.16.578.1.12.4.1.1.9060",
            "code" : "LE",
            "display" : "Lege"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:oid:2.16.578.1.12.4.1.1.7426",
            "code" : "1",
            "display" : "Allmennmedisin"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:oid:2.16.578.1.12.4.1.1.7704",
            "code" : "1",
            "display" : "Autorisasjon"
          }
        ]
      },
      "period" : {
        "start" : "2018-10-10"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "urn:oid:2.16.578.1.12.4.1.1.7426",
            "code" : "152",
            "display" : "Ortopedisk kirurgi"
          }
        ]
      }
    }
  ]
}

```
