Extension: NoBasisSourceofinformation
Id: no-basis-sourceofinformation
Title: "no-basis-sourceofinformation"
Description: "Part of norwegian KI standard."
* ^version = "2.0.3"
* ^date = "2019-09-20"
* ^context.type = #extension
* ^context.expression = "AllergyIntolerance"
* . ^short = "Source of information for Allergy intolerance"
* . ^definition = "Extention to support national KI standard."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains source 1..1
* extension[source].value[x] only CodeableConcept
* extension[source].value[x].coding.system = "urn:uid:2.16.578.1.12.4.1.1.7498" (exactly)