Invariant: inv-1
Description: "The 'shortNotice' extension can only be used when the 'actor' is of type 'Patient'."
Expression: "extension.where(url = 'http://example.org/StructureDefinition/no-basis-shortnotice').value.exists() and actor.type = 'Patient'"
Severity: #error

Profile: NoBasisAppointmentResponse
Parent: AppointmentResponse
Id: no-basis-AppointmentResponse
Title: "no-basis-AppointmentResponse"
Description: "Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to each use-case."
* ^status = #active
* obeys inv-1
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoBasisShortNotice named shortNotice 0..1
* extension[shortNotice] ^definition = "Patient can come on short notice."
* extension[shortNotice].value[x] ^definition = "Patient can come on short notice. Response is boolean"