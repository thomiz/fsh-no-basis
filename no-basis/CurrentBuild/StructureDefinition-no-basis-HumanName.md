# no-basis-HumanName - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-HumanName**

## Data Type Profile: no-basis-HumanName 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-HumanName | *Version*:2.2.3-test | |
| Active as of 2019-05-20 | [Maturity Level](http://hl7.org/fhir/versions.html#maturity): 1 | *Computable Name*:NoBasisHumanName |

 
Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

**Usages:**

* Use this DataType Profile: [no-basis-Patient](StructureDefinition-no-basis-Patient.md), [no-basis-Person](StructureDefinition-no-basis-Person.md), [no-basis-Practitioner](StructureDefinition-no-basis-Practitioner.md) and [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-HumanName)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-HumanName.csv), [Excel](StructureDefinition-no-basis-HumanName.xlsx), [Schematron](StructureDefinition-no-basis-HumanName.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-HumanName",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-06-13T12:22:47.269+00:00"
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm",
      "valueInteger" : 1
    }
  ],
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HumanName",
  "version" : "2.2.3-test",
  "name" : "NoBasisHumanName",
  "title" : "no-basis-HumanName",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "HumanName",
        "path" : "HumanName",
        "short" : "Norwegian human name",
        "definition" : "Defines the format of norwegian human name according to norwegian legislation (lov om personnavn)."
      },
      {
        "id" : "HumanName.extension:middlename",
        "path" : "HumanName.extension",
        "sliceName" : "middlename",
        "short" : "Defines a middle name",
        "definition" : "Defines a middle name as a specific extension as this is widely used in Norwegian names. The middlename is defined in norwegian legislation (lov om personnavn).",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-middlename"
            ]
          }
        ]
      },
      {
        "id" : "HumanName.family",
        "path" : "HumanName.family",
        "definition" : "Ref. \"lov om personnavn\" for further details about Norwegian HumanNames.\r\n\r\nThe part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father.",
        "alias" : ["etternavn"]
      },
      {
        "id" : "HumanName.given",
        "path" : "HumanName.given",
        "short" : "Given names (not always 'first')",
        "definition" : "Given name. In Norway Given name does not include middlenames according to the regulation for norwegian names. Multiple given names are however legal. Ref. \"Lov om personnavn\" for further details about Norwegian HumanNames.",
        "alias" : ["fornavn", "middle name"]
      },
      {
        "id" : "HumanName.prefix",
        "path" : "HumanName.prefix",
        "short" : "Prefix is not used in Norwegian names",
        "definition" : "This is not a part of official Norwegian names as defined in \"lov om personnavn\" regulation.\r\n\r\nPart of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name.",
        "mustSupport" : false
      },
      {
        "id" : "HumanName.suffix",
        "path" : "HumanName.suffix",
        "short" : "Suffix is not used in Norwegian human names",
        "definition" : "This is not a part of official Norwegian names as defined in \"lov om personnavn\" regulation.\r\n\r\nPart of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the end of the name.",
        "mustSupport" : false
      }
    ]
  }
}

```
