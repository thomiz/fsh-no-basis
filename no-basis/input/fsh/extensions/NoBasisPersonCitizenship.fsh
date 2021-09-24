Extension: NoBasisPersonCitizenship
Id: no-basis-person-citizenship
Title: "no-basis-person-citizenship"
Description: "The Person's legal status as citizen of a country."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "2.0.14"
* ^date = "2018-12-27T22:37:54+11:00"
* ^publisher = "HL7 Norway"
* ^context[0].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "RelatedPerson"
* . ^short = "Nation(s) where the person claims citizenship"
* . ^definition = "The person's legal status as citizen of a country."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    code 0..1 and
    period 0..1
* extension[code] ^short = "Nation code of citizenship"
* extension[code] ^definition = "Nation code representing the citizenship of person."
* extension[code].url only uri
* extension[code].value[x] only CodeableConcept
* extension[period] ^short = "Time period of citizenship"
* extension[period] ^definition = "Period when citizenship was effective."
* extension[period].url only uri
* extension[period].value[x] only Period
* url only uri