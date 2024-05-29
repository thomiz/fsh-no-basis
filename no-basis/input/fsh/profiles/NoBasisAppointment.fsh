Profile: NoBasisAppointment
Parent: Appointment
Id: no-basis-Appointment
Title: "no-basis-Appointment"
Description: "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) can be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^status = #active
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    no-basis-virtual-service named virtualService 0..* MS and
    no-basis-group named group 0..1 MS and  
    no-basis-partof named partOf 0..1 MS
* appointmentType.coding ^slicing.discriminator.type = #value
* appointmentType.coding ^slicing.discriminator.path = "$this"
* appointmentType.coding ^slicing.rules = #open
* appointmentType.coding contains
    omsorgsNiva 0..1 and
    kontaktType 0..1 and
    innbygger 0..1
* appointmentType.coding[omsorgsNiva] from urn:oid:2.16.578.1.12.4.1.1.8406 
* appointmentType.coding[omsorgsNiva] ^short = "Volven 8406"
* appointmentType.coding[omsorgsNiva] ^definition = "Omsorgsnivå (OID=8406)."
* appointmentType.coding[omsorgsNiva] ^mustSupport = false
* appointmentType.coding[omsorgsNiva] ^binding.description = "Volven"
* appointmentType.coding[kontaktType] from urn:oid:2.16.578.1.12.4.1.1.8432 
* appointmentType.coding[kontaktType] ^short = "Volven 8432"
* appointmentType.coding[kontaktType] ^definition = "Kontakttype (OID=8432)"
* appointmentType.coding[kontaktType] ^mustSupport = false
* appointmentType.coding[kontaktType] ^binding.description = "Volven"
* appointmentType.coding[innbygger] from urn:oid:2.16.578.1.12.4.1.1.7617 
* appointmentType.coding[innbygger] ^short = "Volven 7617"
* appointmentType.coding[innbygger] ^definition = "Timetype innbyggerportal (OID=7617)"
* appointmentType.coding[innbygger] ^mustSupport = false
* appointmentType.coding[innbygger] ^binding.description = "Volven"
* appointmentType.coding ^short = "Recomended code systems for no-basis-Appointment."
* appointmentType.coding ^definition = "Recomended code systems for no-basis-Appointment. The recomended code systems might not be suficient for defining appointment type and in an implemented profile - some other coding might be needed."
