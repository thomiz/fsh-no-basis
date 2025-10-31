# no-basis-RelatedPerson - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-RelatedPerson**

## Resource Profile: no-basis-RelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/StructureDefinition/no-basis-RelatedPerson | *Version*:2.2.3-test |
| Active as of 2019-05-20 | *Computable Name*:NoBasisRelatedPerson |

 
Basisprofil for Norwegian RelatedPerson information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. 
Typical use-case for no-basis-RelatedPerson involves information about relations person-patient. 
* Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)
* Other relationship information registered on a patient or person neccessary for patient treatment
* Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource
 

**Usages:**

* Refer to this Profile: [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md)
* Examples for this Profile: [RelatedPerson/Solid-Aresdoktor-RelatedPerson](RelatedPerson-Solid-Aresdoktor-RelatedPerson.md) and [RelatedPerson/Sorgard-Erlend-RelatedPerson](RelatedPerson-Sorgard-Erlend-RelatedPerson.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.basis|current/StructureDefinition/no-basis-RelatedPerson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-no-basis-RelatedPerson.csv), [Excel](StructureDefinition-no-basis-RelatedPerson.xlsx), [Schematron](StructureDefinition-no-basis-RelatedPerson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "no-basis-RelatedPerson",
  "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-RelatedPerson",
  "version" : "2.2.3-test",
  "name" : "NoBasisRelatedPerson",
  "title" : "no-basis-RelatedPerson",
  "status" : "active",
  "date" : "2019-05-20",
  "description" : "Basisprofil for Norwegian RelatedPerson information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.\n\nTypical use-case for no-basis-RelatedPerson involves information about relations person-patient.\n- Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)\n- Other relationship information registered on a patient or person neccessary for patient treatment\n- Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.identifier",
        "path" : "RelatedPerson.identifier",
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
        "id" : "RelatedPerson.identifier:FNR",
        "path" : "RelatedPerson.identifier",
        "sliceName" : "FNR",
        "short" : "Norwegian FNR",
        "definition" : "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided.",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "RelatedPerson.identifier:FNR.system",
        "path" : "RelatedPerson.identifier.system",
        "short" : "Identification of the Norwegian FNR",
        "definition" : "Identifies that this is a Norwegian Fødselsnummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.1"
      },
      {
        "id" : "RelatedPerson.identifier:FNR.value",
        "path" : "RelatedPerson.identifier.value",
        "short" : "The actual Fødselsnummer",
        "definition" : "The Norwegian Fødselsnummer",
        "alias" : ["Fødselsnummer"],
        "min" : 1,
        "example" : [
          {
            "label" : "Fødselsnummer",
            "valueString" : "15076500565"
          }
        ]
      },
      {
        "id" : "RelatedPerson.identifier:DNR",
        "path" : "RelatedPerson.identifier",
        "sliceName" : "DNR",
        "short" : "The D-nummer of the patient",
        "definition" : "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "RelatedPerson.identifier:DNR.system",
        "path" : "RelatedPerson.identifier.system",
        "short" : "The identification of the D-nummer",
        "definition" : "The identification of the Norwegian D-nummer",
        "min" : 1,
        "fixedUri" : "urn:oid:2.16.578.1.12.4.1.4.2"
      },
      {
        "id" : "RelatedPerson.identifier:DNR.value",
        "path" : "RelatedPerson.identifier.value",
        "short" : "The actual D-nummer",
        "definition" : "The actual Norwegian D-nummer",
        "alias" : ["D-nummer"],
        "min" : 1,
        "example" : [
          {
            "label" : "D-nummer",
            "valueString" : "700199 50032"
          }
        ]
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "short" : "The person this person is related to",
        "definition" : "no-basis: Can reference no-basis-Patient in addition to Patient resources. \r\nIf a person reference is needed the optional extension should be used.\r\n\r\nThe patient this person is related to.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Patient"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "rules" : "open"
        },
        "definition" : "no-basis: adds slice definitions for three relationship codings from the Norwegian Folkeregisteret.\r\nSome relationships are ordered (a person is a parent of a child but the child on the other hand is the child of a parent). Ordered relationships are always expressed from the RelatedPerson instance to the Patient/Person instance referenced in the RelatedPerson.patient element. This will usually be the EXACT OPPOSITE of the actual data recorded in FREG, as relationships in FREG is recorded with the view from the Person to the RelatedPersons.\r\n\r\nThe nature of the relationship between a patient and the related person."
      },
      {
        "id" : "RelatedPerson.relationship:maritalStatus",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "maritalStatus",
        "short" : "marital status from Norwegian Person Index",
        "definition" : "Sivilstand as registered in the norwegian Person Index (folkeregisteret). \r\n\r\n• uoppgitt (kode i DSF: 0)\r\n• ugift (kode i DSF: 1)\r\n• gift (kode i DSF: 2)\r\n• enkeEllerEnkemann (enke eller enkemann) (kode i DSF: 3)\r\n• skilt (kode i DSF: 4)\r\n• separert (kode i DSF: 5)\r\n• registrertPartner(registrert partner) (kode i DSF: 6)\r\n• separertPartner (separert partner) (kode i DSF: 7)\r\n• skiltPartner (skilt partner) (kode i DSF: 8)\r\n• gjenlevendePartner (gjenlevende partner) (kode i DSF: 9)",
        "alias" : ["sivilstand"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-marital-status"
        }
      },
      {
        "id" : "RelatedPerson.relationship:maritalStatus.coding.system",
        "path" : "RelatedPerson.relationship.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.no/fhir/CodeSystem/no-basis-marital-status"
      },
      {
        "id" : "RelatedPerson.relationship:familyRelation",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "familyRelation",
        "short" : "Family relationship from Norwegian Person Index",
        "definition" : "Family relationship from Norwegian Person Index. \r\nThis is the role of the RelatedPerson instance in a familyrelation to the Person/Patient instance(relatertPersonsRolle).\r\n\r\nmor\r\nfar\r\nmedmor\r\nbarn\r\nsøsken\r\nektefelleEllerPartner\r\ndødfødtBarn",
        "alias" : ["familierelasjon", "relatertPersonsRolle"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-family-relation"
        }
      },
      {
        "id" : "RelatedPerson.relationship:familyRelation.coding.system",
        "path" : "RelatedPerson.relationship.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.no/fhir/CodeSystem/no-basis-family-relation"
      },
      {
        "id" : "RelatedPerson.relationship:parental",
        "path" : "RelatedPerson.relationship",
        "sliceName" : "parental",
        "short" : "Parental responsibility registered in Norwegian person index",
        "definition" : "Parental responsibility registered in Norwegian person index.\r\n\r\nbarnet har krav på omsut og omtanke frå dei som har foreldreansvaret. Dei har rett og plikt til å ta avgjerder for barnet i personlege tilhøve innanfor dei grensene som §§ 31 til 33 set. Foreldreansvaret skal utøvast ut frå barnet sine interesser og behov. Dei som har foreldreansvaret, er skyldige til å gje barnet forsvarleg oppseding og forsyting. Dei skal syte for at barnet får utdanning etter evne og givnad\r\nInneholder hvem som evt. har foreldremyndighet for en umyndig person.\r\nforeldremyndighet = myndighet til å inneha og utøve et foreldreansvar\r\n\r\nKodeverdier i Registeret i Freg:\r\n- felles\r\n- mor\r\n- far\r\n- medmor\r\n- andre\r\n- ukjent\r\nI Registeret vil ansvaret bli vist som en to-veis relasjon vha. identifikatorer eller identifiserende informasjon.\r\nDe gjeldende relasjonene til personer/barnevernsnemnd o.l. vil i praksis opphøre når personen ikke lenger er underlagt foreldreansvar, men de vil ikke opphøre i Registeret.\r\nNår informasjonen er migrert fra DSF vil Registeret være oppdatert i takt med DSF.",
        "alias" : ["foreldreansvar"],
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.no/fhir/ValueSet/no-basis-parental-responsibility"
        }
      },
      {
        "id" : "RelatedPerson.relationship:parental.coding.system",
        "path" : "RelatedPerson.relationship.coding.system",
        "min" : 1,
        "fixedUri" : "http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility"
      },
      {
        "id" : "RelatedPerson.name",
        "path" : "RelatedPerson.name",
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
        "id" : "RelatedPerson.address",
        "path" : "RelatedPerson.address",
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
