Extension: NoBasisGroup
Id: no-basis-group
Title: "no-basis-group"
Description: "The appointment is a group session."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Appointment"
* . ..1
* . ^short = "no-basis-group"
* . ^definition = "The appointment is a group session."
* value[x] only boolean
* value[x] ^short = "The appointment is a group session."