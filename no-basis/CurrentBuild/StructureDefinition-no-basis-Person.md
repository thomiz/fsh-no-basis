# no-basis-Person - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Person**

## Resource Profile: no-basis-Person 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-Person | *Version*:2.2.3-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisPerson |

 
Basisprofil for Norwegian Person information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 
The no-basis-Person resource main use-case is with regards to information describing persons that are living in Norway. The information is typically available from the Norwegian "folkeregister" and contains information describing all Norweigan citizens and individuals working and living in Norway. 

**Usages:**

* Derived from this Profile: [derived-Person](StructureDefinition-derived-Person.md)
* Refer to this Profile: [no-basis-relatedperson-person-reference](StructureDefinition-no-basis-relatedperson-person-reference.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Person)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Person.csv), [Excel](StructureDefinition-no-basis-Person.xlsx), [Schematron](StructureDefinition-no-basis-Person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Person",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Person",
  "version" : "2.2.3-test",
  "name" : "NoBasisPerson",
  "title" : "no-basis-Person",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian Person information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nThe no-basis-Person resource main use-case is with regards to information describing persons that are living in Norway. The information is typically available from the Norwegian \"folkeregister\" and contains information describing all Norweigan citizens and individuals working and living in Norway.",
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
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Person",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Person",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Person",
        "path" : "Person"
      },
      {
        "id" : "Person.identifier",
        "path" : "Person.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "An identifier for this person. Should be at Fødselsnummer or D-nummer\r\n\r\nIdentifier for a person within a particular scope."
      },
      {
        "id" : "Person.identifier:FNR",
        "path" : "Person.identifier",
        "sliceName" : "FNR",
        "short" : "Norwegian FNR",
        "definition" : "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided.",
        "alias" : ["fødselsnummer"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Person.identifier:FNR.system",
        "path" : "Person.identifier.system",
        "short" : "Identification of the Norwegian FNR",
        "definition" : "Identifies that this is a Norwegian Fødselsnummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
      },
      {
        "id" : "Person.identifier:FNR.value",
        "path" : "Person.identifier.value",
        "definition" : "The Norwegian Fødselsnummer",
        "alias" : ["fødselsnummer"],
        "min" : 1,
        "example" : [
          {
            "label" : "Fødselsnummer",
            "valueString" : "15076500565"
          }
        ]
      },
      {
        "id" : "Person.identifier:DNR",
        "path" : "Person.identifier",
        "sliceName" : "DNR",
        "short" : "The D-nummer of the patient",
        "definition" : "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
        "alias" : ["D-nummer"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Person.identifier:DNR.system",
        "path" : "Person.identifier.system",
        "short" : "The identification of the D-nummer",
        "definition" : "The identification of the Norwegian D-nummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
      },
      {
        "id" : "Person.identifier:DNR.value",
        "path" : "Person.identifier.value",
        "definition" : "The actual Norwegian D-nummer",
        "min" : 1,
        "example" : [
          {
            "label" : "D-nummer",
            "valueString" : "700199 50032"
          }
        ]
      },
      {
        "id" : "Person.name",
        "path" : "Person.name",
        "type" : [
          {
            "code" : "HumanName",
            "profile" : [
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-HumanName"
            ]
          }
        ]
      },
      {
        "id" : "Person.address",
        "path" : "Person.address",
        "short" : "Norwegian address",
        "definition" : "http://hl7.no/fhir/StructureDefinition/no-basis-Address",
        "type" : [
          {
            "code" : "Address",
            "profile" : ["http://hl7.no/fhir/ig/StructureDefinition/no-basis-Address"]
          }
        ]
      }
    ]
  }
}

```
