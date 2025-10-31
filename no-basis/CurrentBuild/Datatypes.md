# Datatypes - v2.2.3-test

* [**Table of Contents**](toc.md)
* **Datatypes**

## Datatypes

# Data types

![](https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/no-basis-Datatypes.png)

## no-basis-Address

Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should restrict further the information elements according to specification relevant to the use-case.

The full documentation of the profile [no-basis-Address](StructureDefinition-no-basis-Address.md)

### CodeSystem mapping

Two codesystems for address are currently in use in the Norwegian healthcare sector, both are registered on Volven with oids 3401 and 7411. The mapping of values to the ones used in FHIR STU3 and FHIR R4 is shown in the table below. The table maps code used in elements "Address.use" and "address.type". The official code is added as an extension to the no-basis-Address profile and makes it possible to denote official norwegian addresses registered in "Folkeregisteret".

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | home | both | H Bostedsadresse | H Bostedsadresse for personer |
| true | home | * | HP Folkeregisteradresse |   |
| - | work | * | WP Arbeidsadresse |   |
| - | * | postal |   | PST Postadresse for organisasjoner |
| - | temp | * | HV Ferieadresse, TMP Midlertidig adresse |   |
| - | old | * | BAD Ubrukelig adresse |   |
| - | home | billing (R4) | INV Faktureringsadresse |   |
| - | home | postal | PST Postadresse |   |
| - | home | physical | RES Besøksadresse |   |

## no-basis-HumanName

Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should restrict further the information elements according to specification relevant to the use-case.

The full documentation of the profile [no-basis-HumanName](StructureDefinition-no-basis-HumanName.md)

## Examples

Example patient resource conformant to no-basis-Patient uses the no-basis-Address and no-basis-HumanName [Jannice Søreng](Patient-JanniceSoreng.md)

