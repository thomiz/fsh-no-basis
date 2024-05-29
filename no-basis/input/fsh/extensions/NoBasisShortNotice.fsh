Extension: NoBasisShortNotice
Id: no-basis-shortnotice
Title: "no-basis-shortnotice"
Description: "The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots."
* ^status = #active
* ^context.type = #element
* ^context.expression = "AppointmentResponse"
* . ..1
* value[x] only boolean
* value[x] ^short = "Patient can come on short notice."