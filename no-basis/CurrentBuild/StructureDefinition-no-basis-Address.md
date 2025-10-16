# no-basis-Address - v2.2.2-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-Address**

## Data Type Profile: no-basis-Address 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/StructureDefinition/no-basis-Address | *Version*:2.2.2-test |
| Active as of 2019-05-15 | *Computable Name*:NoBasisAddress |

 
Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 

 
Norwegian basisprofil for Address resource adding Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. 

**Usages:**

* Use this DataType Profile: [no-basis-Location](StructureDefinition-no-basis-Location.md), [no-basis-Organization](StructureDefinition-no-basis-Organization.md), [no-basis-Patient](StructureDefinition-no-basis-Patient.md), [no-basis-Person](StructureDefinition-no-basis-Person.md)...Show 2 more,[no-basis-Practitioner](StructureDefinition-no-basis-Practitioner.md)and[no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-Address)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-Address.csv), [Excel](StructureDefinition-no-basis-Address.xlsx), [Schematron](StructureDefinition-no-basis-Address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-Address",
  "meta" : {
    "versionId" : "3",
    "lastUpdated" : "2019-05-15T13:38:12.872+00:00"
  },
  "url" : "http://hl7.no/fhir/StructureDefinition/no-basis-Address",
  "version" : "2.2.2-test",
  "name" : "NoBasisAddress",
  "title" : "no-basis-Address",
  "status" : "active",
  "date" : "2019-05-15",
  "description" : "Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.",
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
  "purpose" : "Norwegian basisprofil for Address resource adding Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address.",
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
    },
    {
      "identity" : "vcard",
      "uri" : "http://w3.org/vcard",
      "name" : "vCard Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Address.extension:official",
        "path" : "Address.extension",
        "sliceName" : "official",
        "alias" : ["offisiell adresse", "user content"],
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
            ]
          }
        ]
      },
      {
        "id" : "Address.extension:urbanDistrict",
        "path" : "Address.extension",
        "sliceName" : "urbanDistrict",
        "short" : "urban district information",
        "definition" : "The name and number of the of the urban district of this address.",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-urban-district"
            ]
          }
        ]
      },
      {
        "id" : "Address.extension:propertyInformation",
        "path" : "Address.extension",
        "sliceName" : "propertyInformation",
        "short" : "Real property identification",
        "definition" : "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
            ]
          }
        ]
      },
      {
        "id" : "Address.use",
        "path" : "Address.use",
        "definition" : "The purpose of this address.\r\n\r\nMapping of values to other Norwegian CodeSystems is documented in the implementation guide. In general the address used for visiting the person should have use \"home\" and type \"physical\" or \"both\". The \"official\" flag can be either true or false."
      },
      {
        "id" : "Address.type",
        "path" : "Address.type",
        "definition" : "Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.\r\n\r\nMapping of values to other Norwegian CodeSystems is documented in the implementation guide. In general the address used for visiting the person should have use \"home\" and type \"physical\" or \"both\". The \"official\" flag can be either true or false."
      },
      {
        "id" : "Address.city",
        "path" : "Address.city",
        "short" : "Poststed or city",
        "definition" : "When a postalcode is given the name of the city must be according to the official list of postalcodes used in Norway.\r\n\r\nThe name of the city, town, village or other community or delivery center.",
        "alias" : ["by", "poststed"]
      },
      {
        "id" : "Address.district",
        "path" : "Address.district",
        "short" : "name of \"kommune\"",
        "definition" : "Name of the county (norwegian \"kommune\").\r\n\r\nThe name of the administrative area (county).",
        "alias" : ["kommune"]
      },
      {
        "id" : "Address.district.extension",
        "path" : "Address.district.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Address.district.extension:municipalitycode",
        "path" : "Address.district.extension",
        "sliceName" : "municipalitycode",
        "short" : "Coded value for municipality/county Norwegian kommune",
        "definition" : "Coded value for municipality/county Norwegian kommune",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode"
            ]
          }
        ]
      },
      {
        "id" : "Address.state",
        "path" : "Address.state",
        "short" : "norwegian \"fylke\"",
        "definition" : "Name of the norwegian \"fylke\"). If fylkes-number is required \"eiendomsinformasjon\" should be used with koded kommune-number.\r\n\r\nSub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes).",
        "alias" : ["fylke", "Territory"]
      },
      {
        "id" : "Address.postalCode",
        "path" : "Address.postalCode",
        "definition" : "A postal code designating a region defined by the postal service.\r\n\r\nIn Norway this is af four digit number defined by the norwegian postal service.",
        "alias" : ["postnummer"]
      }
    ]
  }
}

```
