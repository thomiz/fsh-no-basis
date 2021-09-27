Extension: NoBasisRelatedpersonPersonReference
Id: no-basis-relatedperson-person-reference
Description: "If a person reference is needed in RelatedPerson.patient element, this optional extension should be used."
* ^url = "http://ehelse.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference"
* ^version = "2.0.15"
* ^date = "2021-04-07"
* ^context.type = #element
* ^context.expression = "RelatedPerson.patient"
* . ^short = "Person reference in RelatedPerson.patient element"
* . ^definition = "If a person reference is needed in RelatedPerson.patient element, this optional extension should be used.\r\nThe extension includes a reference to a single Person/no-basis-Person resource.\r\n\r\nTo support searches for identifiers, an identifier value should be supported in addition to the literal reference."
* . ^comment = "no-basis currently (v2.0.15) don't include search parameter definition for this extension."
* url = "http://ehelse.no/fhir/StructureDefinition/no-basis-relatedperson-person-reference" (exactly)
* value[x] only Reference(NoBasisPerson or Person)
* value[x] ^short = "Reference to person resource"
* value[x] ^definition = "Reference to a single Person/no-basis-Person resource in RelatedPerson.patient element. \r\nShould only be used when a Person resource reference is needed.\r\n\r\nName or identifier should be supplied in the RelatedPerson.patient element, in addition to information supplied in this extension."