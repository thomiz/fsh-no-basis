Extension: NoBasisPrescriptiongroup
Id: no-basis-prescriptiongroup
Title: "no-basis-prescriptiongroup"
Description: "Part of norwegian standard for describing a prescription."
* ^version = "2.0.3"
* ^date = "2019-07-03"
* ^context.type = #element
* ^context.expression = "Medication"
* . ^short = "Describes the group the medication is within"
* . ^definition = "Prescription group"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains prescriptiongroup 0..*
* extension[prescriptiongroup].value[x] only CodeableConcept
* extension[prescriptiongroup].value[x].coding.system = "urn:oid:2.16.578.1.12.4.1.1.7421" (exactly)