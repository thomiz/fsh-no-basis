# no-basis-propertyinformation - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-propertyinformation**

## Extension: no-basis-propertyinformation 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-propertyinformation | *Version*:2.2.3-test |
| Active as of 2018-10-26 | *Computable Name*:NoBasisPropertyinformation |

This basis extension describes information identifying norwegian real property.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [no-basis-Address](StructureDefinition-no-basis-Address.md)
* Examples for this Extension: [Patient/JanniceSorengTo](Patient-JanniceSorengTo.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-propertyinformation)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-propertyinformation.csv), [Excel](StructureDefinition-no-basis-propertyinformation.xlsx), [Schematron](StructureDefinition-no-basis-propertyinformation.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-propertyinformation",
  "meta" : {
    "versionId" : "1",
    "lastUpdated" : "2018-06-13T12:21:26.15+00:00"
  },
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-propertyinformation",
  "version" : "2.2.3-test",
  "name" : "NoBasisPropertyinformation",
  "title" : "no-basis-propertyinformation",
  "status" : "active",
  "date" : "2018-10-26",
  "description" : "This basis extension describes information identifying norwegian real property.",
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
      "expression" : "Address"
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
        "short" : "real property identification",
        "definition" : "Additional information identifying norwegian real property."
      },
      {
        "id" : "Extension.extension:cadastralUnitNumber",
        "path" : "Extension.extension",
        "sliceName" : "cadastralUnitNumber",
        "short" : "cadastral unit number",
        "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer. Gårdsnummer is called Cadastral unit number in English.",
        "comment" : "Gårdsnummer",
        "alias" : ["cadastral unit number", "gårdsnummer"],
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:cadastralUnitNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:cadastralUnitNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "cadastralUnitNumber"
      },
      {
        "id" : "Extension.extension:cadastralUnitNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:propertyUnitNumber",
        "path" : "Extension.extension",
        "sliceName" : "propertyUnitNumber",
        "short" : "Property unit number",
        "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer. Bruksnummer is called Property unit number in English.",
        "comment" : "bruksnummer",
        "alias" : ["Property unit number", "bruksnummer"],
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:propertyUnitNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:propertyUnitNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "propertyUnitNumber"
      },
      {
        "id" : "Extension.extension:propertyUnitNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:leaseholdNumber",
        "path" : "Extension.extension",
        "sliceName" : "leaseholdNumber",
        "short" : "Leasehold number",
        "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. Festenummer is called Leasehold number in english.",
        "comment" : "Festenummer",
        "alias" : ["Leasehold number", "Festenummer"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:leaseholdNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:leaseholdNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "leaseholdNumber"
      },
      {
        "id" : "Extension.extension:leaseholdNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:condominiumUnitNumber",
        "path" : "Extension.extension",
        "sliceName" : "condominiumUnitNumber",
        "short" : "Condominium unit number",
        "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition some real property is split into sections identified by its seksjonsnummer. Seksjonsnummer is called Condominium unit number in English.",
        "comment" : "Seksjonsnummer",
        "alias" : ["Condominium unit number", "seksjonsnummer"],
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:condominiumUnitNumber.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:condominiumUnitNumber.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "condominiumUnitNumber"
      },
      {
        "id" : "Extension.extension:condominiumUnitNumber.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Extension.extension:municipality",
        "path" : "Extension.extension",
        "sliceName" : "municipality",
        "short" : "Identification of the Municipality",
        "definition" : "The norwegian kommune identifies an administrative geographic unit in Norway called kommune by a predefined number and its official name.",
        "alias" : ["Kommune", "user content"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "description" : "kommunenummer"
        }
      },
      {
        "id" : "Extension.extension:municipality.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:municipality.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "municipality"
      },
      {
        "id" : "Extension.extension:municipality.value[x]",
        "path" : "Extension.extension.value[x]",
        "short" : "Kommunenummer according to CodeSystem",
        "definition" : "The norwegian kommunenummer identifies an administrative geographic unit in Norway called kommune by a predefined number. The number should be coded according to CodeSystem Kommunenummer og regionale spesialkoder (OID=3402).",
        "alias" : ["kommunenummer"],
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "description" : "Kommunenummer according to CodeSystem",
          "valueSet" : "urn:oid:2.16.578.1.12.4.1.1.3402"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-propertyinformation"
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
