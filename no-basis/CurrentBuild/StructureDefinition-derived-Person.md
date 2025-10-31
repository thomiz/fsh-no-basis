# derived-Person - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **derived-Person**

## Resource Profile: derived-Person 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/derived-Person | *Version*:2.2.3-test |
| Draft as of 2022-01-10 | *Computable Name*:DerivedPerson |

 
Derived person from no-basis-Person for Norwegian Person information. 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/derived-Person)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-derived-Person.csv), [Excel](StructureDefinition-derived-Person.xlsx), [Schematron](StructureDefinition-derived-Person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "derived-Person",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/derived-Person",
  "version" : "2.2.3-test",
  "name" : "DerivedPerson",
  "title" : "derived-Person",
  "status" : "draft",
  "date" : "2022-01-10",
  "description" : "Derived person from no-basis-Person for Norwegian Person information.",
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
  "baseDefinition" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Person",
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
        "definition" : "An identifier for this person. Should be at Fødselsnummer or D-nummer\r\n\r\nIdentifier for a person within a particular scope. TNR is also allowed"
      },
      {
        "id" : "Person.identifier:TNR",
        "path" : "Person.identifier",
        "sliceName" : "TNR",
        "short" : "Norwegian TNR",
        "definition" : "TNR is a special form of person identifier",
        "alias" : ["tnummer"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Person.identifier:TNR.system",
        "path" : "Person.identifier.system",
        "short" : "Identification of the Norwegian TNR",
        "definition" : "Identifies that this is a TNR",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.666"
      },
      {
        "id" : "Person.identifier:TNR.value",
        "path" : "Person.identifier.value",
        "definition" : "The Norwegian Tnummer",
        "alias" : ["tnummer"],
        "min" : 1
      }
    ]
  }
}

```
