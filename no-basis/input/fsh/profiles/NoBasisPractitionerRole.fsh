Profile: NoBasisPractitionerRole
Parent: PractitionerRole
Id: no-basis-PractitionerRole
Title: "no-basis-PractitionerRole"
Description: """Basisprofil for Norwegian PractitionerRole information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific role information is available. The basis profile is open, but derived profiles should close down the information elements according to specifications relevant to the use-case.

The main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization."""
* ^version = "2.0.0"
* ^status = #active
* ^date = "2019-05-20"
* practitioner only Reference(Practitioner)
* organization only Reference(Organization)
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code ^definition = "no-basis: Codes related to what function the Practitioner may perform\r\n\r\nRoles which this practitioner is authorized to perform for the organization."
* code contains functions 0..*
* code[functions] from urn:oid:2.16.578.1.12.4.1.1.9034 (preferred)
* code[functions] ^definition = "no-basis: Codes from urn:oid:2.16.578.1.12.4.1.1.9034 Helsepersonells funksjoner mv. (OID=9034)\r\n\r\nRoles which this practitioner is authorized to perform for the organization."
* code[functions] ^alias = "helsepersonells funksjoner"
* code[functions].coding.system 1..
* code[functions].coding.system = "urn:oid:2.16.578.1.12.4.1.1.9034" (exactly)
* code[functions].coding.system ^short = "Identity of the Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=9034)"
* code[functions].coding.system ^definition = "The identification of the code system Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=9034)"
* code[functions].coding.code 1..
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty ^definition = "no-basis: code related to a speciality that the Practitioner can perform in the role within an organization\r\n\r\nSpecific specialty of the practitioner."
* specialty contains discipline 0..*
* specialty[discipline] from urn:oid:2.16.578.1.12.4.1.1.8451 (preferred)
* specialty[discipline] ^short = "Specific discipline of practitioner"
* specialty[discipline] ^definition = "The Discipline the practitioner operates within the organization."
* specialty[discipline] ^alias = "fagområde"
* specialty[discipline] ^binding.description = "Specific discipline"
* specialty[discipline].coding.system 1..
* specialty[discipline].coding.system = "urn:oid:2.16.578.1.12.4.1.1.8451" (exactly)
* specialty[discipline].coding.system ^short = "The identification of the code system"
* specialty[discipline].coding.system ^definition = "The identification of the code system Fagområde (OID=8451)"
* specialty[discipline].coding.system ^alias = "Fagområde"
* specialty[discipline].coding.code 1..
* location only Reference(Location)
* healthcareService only Reference(HealthcareService)
* endpoint only Reference(Endpoint)
* endpoint ^definition = "no-basis: don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource.\r\n\r\nTechnical endpoints providing access to services operated for the practitioner with this role."