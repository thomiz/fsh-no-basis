Extension: NoBasisPartOf
Id: no-basis-partof
Title: "no-basis-partof"
Description: "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked. A larger appointment of which this particular appointment is a component or step."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Appointment"
* . ^short = "no-basis-partof"
* . ^definition = "This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked. A larger appointment of which this particular appointment is a component or step."
* value[x] only Reference(no-basis-Appointment)
* value[x] ^short = "Appoinment partOf structure."
* value[x] ^definition = "A larger appointment of which this particular appointment is a component or step."