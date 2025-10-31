# no-basis-middlename - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-middlename**

## SearchParameter: no-basis-middlename 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/SearchParameter/no-basis-middlename | *Version*:2.2.3-test |
| Active as of 2025-10-31 | *Computable Name*:NoBasisMiddlename |

 
SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename 

## NoBasisMiddlename

Parameter `middlename`:`string`

SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename

| | |
| :--- | :--- |
| Resources | [Patient](http://hl7.org/fhir/R4/patient.html),[Practitioner](http://hl7.org/fhir/R4/practitioner.html),[Person](http://hl7.org/fhir/R4/person.html) |
| Expression | `Patient.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Practitioner.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Person.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Modifiers | Allowed: missing, exact, contains |



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "no-basis-middlename",
  "url" : "http://hl7.no/fhir/SearchParameter/no-basis-middlename",
  "version" : "2.2.3-test",
  "name" : "NoBasisMiddlename",
  "status" : "active",
  "date" : "2025-10-31T06:29:19+00:00",
  "description" : "SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename",
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
  "code" : "middlename",
  "base" : ["Patient", "Practitioner", "Person"],
  "type" : "string",
  "expression" : "Patient.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Practitioner.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Person.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true,
  "modifier" : ["missing", "exact", "contains"]
}

```
