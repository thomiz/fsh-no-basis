# no-basis-documentreference-type.valueset - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **no-basis-documentreference-type.valueset**

## ValueSet: no-basis-documentreference-type.valueset 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ValueSet/no-basis-documentreference-type | *Version*:2.2.3-test |
| Active as of 2025-10-31 | *Computable Name*:NoBasisDocumentReferenceType |

 **References** 

* [no-basis-Composition](StructureDefinition-no-basis-Composition.md)
* [no-basis-DocumentReference](StructureDefinition-no-basis-DocumentReference.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (not supported by Publication Tooling)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "no-basis-documentreference-type.valueset",
  "url" : "http://hl7.no/fhir/ValueSet/no-basis-documentreference-type",
  "version" : "2.2.3-test",
  "name" : "NoBasisDocumentReferenceType",
  "title" : "no-basis-documentreference-type.valueset",
  "status" : "active",
  "date" : "2025-10-31T06:29:19+00:00",
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
  "compose" : {
    "include" : [
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.9602",
        "concept" : [
          {
            "code" : "A00-1",
            "display" : "Epikriser og sammenfatninger"
          },
          {
            "code" : "A01-2",
            "display" : "Kriseplan"
          },
          {
            "code" : "A02-2",
            "display" : "Individuell plan"
          },
          {
            "code" : "A03-2",
            "display" : "Epikrise"
          },
          {
            "code" : "A04-2",
            "display" : "Sykepleiesammenfatning"
          },
          {
            "code" : "A05-2",
            "display" : "Fysioterapisammenfatning"
          },
          {
            "code" : "A06-2",
            "display" : "Ergoterapisammenfatning"
          },
          {
            "code" : "A07-2",
            "display" : "Psykologsammenfatning"
          },
          {
            "code" : "A08-2",
            "display" : "Sosionomsammenfatning"
          },
          {
            "code" : "A09-2",
            "display" : "Ernæringsfysiologsammenfatning"
          },
          {
            "code" : "A10-2",
            "display" : "Annet fagpersonell sammenfatning"
          },
          {
            "code" : "A11-2",
            "display" : "Tverrfaglig sammenfatning"
          },
          {
            "code" : "A12-2",
            "display" : "Utskrivings-/Pasientorientering"
          },
          {
            "code" : "A13-2",
            "display" : "Poliklinisk epikrise"
          },
          {
            "code" : "B00-1",
            "display" : "Kontinuerlig/løpende journal"
          },
          {
            "code" : "B01-2",
            "display" : "Tverrfaglig behandlingsplan"
          },
          {
            "code" : "B02-2",
            "display" : "Journalnotat"
          },
          {
            "code" : "B03-2",
            "display" : "Poliklinisk notat"
          },
          {
            "code" : "C00-1",
            "display" : "Prøvesvar, vev og væsker"
          },
          {
            "code" : "C01-2",
            "display" : "Medisinsk biokjemi"
          },
          {
            "code" : "C02-2",
            "display" : "Blodbank og immunologi"
          },
          {
            "code" : "C03-2",
            "display" : "Mikrobiologi, virologi og serologi"
          },
          {
            "code" : "C04-2",
            "display" : "Patologi, histologi og cytologi"
          },
          {
            "code" : "C05-2",
            "display" : "Klinisk farmakologi"
          },
          {
            "code" : "C06-2",
            "display" : "Medisinsk genetikk"
          },
          {
            "code" : "C07-2",
            "display" : "Allergiutredning"
          },
          {
            "code" : "D00-1",
            "display" : "Organfunksjon"
          },
          {
            "code" : "D01-2",
            "display" : "Hjerte og kretsløp"
          },
          {
            "code" : "D02-2",
            "display" : "Lunge"
          },
          {
            "code" : "D03-2",
            "display" : "Fordøyelse"
          },
          {
            "code" : "D04-2",
            "display" : "Urinveier"
          },
          {
            "code" : "D05-2",
            "display" : "Gyn/Reproduksjon"
          },
          {
            "code" : "D06-2",
            "display" : "Nervesystemet"
          },
          {
            "code" : "D07-2",
            "display" : "Ledd/ ben/ skjelett"
          },
          {
            "code" : "D08-2",
            "display" : "ØNH"
          },
          {
            "code" : "D09-2",
            "display" : "Øye"
          },
          {
            "code" : "D10-2",
            "display" : "Hud"
          },
          {
            "code" : "D11-2",
            "display" : "Endokrinologi"
          },
          {
            "code" : "D12-2",
            "display" : "Metabolisme"
          },
          {
            "code" : "D13-2",
            "display" : "Beinmargsutstryk"
          },
          {
            "code" : "E00-1",
            "display" : "Bildediagnostikk og andre medisinske bilder"
          },
          {
            "code" : "E01-2",
            "display" : "Diagnostiske bilder"
          },
          {
            "code" : "F00-1",
            "display" : "Kurve, observasjon og behandling"
          },
          {
            "code" : "F01-2",
            "display" : "Kurve"
          },
          {
            "code" : "F02-2",
            "display" : "Anestesi- og opr. Rapporter"
          },
          {
            "code" : "F03-2",
            "display" : "Intensiv/postoperativ observasjon"
          },
          {
            "code" : "F04-2",
            "display" : "Svangerskap og fødsel"
          },
          {
            "code" : "F05-2",
            "display" : "Diabetes/ endokrinologi"
          },
          {
            "code" : "F06-2",
            "display" : "Onkologi/ hematologi"
          },
          {
            "code" : "F07-2",
            "display" : "Nyre/ dialyse"
          },
          {
            "code" : "F08-2",
            "display" : "Smertebehandling"
          },
          {
            "code" : "F09-2",
            "display" : "Ambulansejournal"
          },
          {
            "code" : "F10-2",
            "display" : "Transplantasjon"
          },
          {
            "code" : "I00-1",
            "display" : "Korrespondanse"
          },
          {
            "code" : "I01-2",
            "display" : "Henvisninger"
          },
          {
            "code" : "I02-2",
            "display" : "Brev"
          },
          {
            "code" : "J00-1",
            "display" : "Attester, melding og erklæringer"
          },
          {
            "code" : "J01-2",
            "display" : "Sykmeldinger og trygdesaker"
          },
          {
            "code" : "J02-2",
            "display" : "Legeerklæring om dødsfall"
          },
          {
            "code" : "S00-1",
            "display" : "Test og scoring"
          },
          {
            "code" : "S01-2",
            "display" : "Tester"
          },
          {
            "code" : "S02-2",
            "display" : "Systematiserte diagnostiske intervju"
          },
          {
            "code" : "S03-2",
            "display" : "Voldsrisikovurdering"
          }
        ]
      }
    ]
  }
}

```
