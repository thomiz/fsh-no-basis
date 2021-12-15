Profile: NoBasisAppointment
Parent: Appointment
Id: no-basis-Appointment
Title: "no-basis-Appointment"
Description: "Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) must be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^status = #draft
* cancelationReason ^code.system = "urn:oid:2.16.578.1.12.4.1.1.8445"
* cancelationReason ^code.display = "Volven kodeverk 8445 - Ventetid sluttkode"
* appointmentType.coding ^slicing.discriminator.type = #value
* appointmentType.coding ^slicing.discriminator.path = "$this"
* appointmentType.coding ^slicing.rules = #closed
* appointmentType.coding contains
    omsorgsNiva 0..1 and
    kontaktType 0..1 and
    innbygger 0..1
* appointmentType.coding[omsorgsNiva] from urn:oid:2.16.578.1.12.4.1.1.8406 (extensible)
* appointmentType.coding[omsorgsNiva] ^short = "Volven 8406"
* appointmentType.coding[omsorgsNiva] ^definition = "Volven 8406"
* appointmentType.coding[omsorgsNiva] ^mustSupport = false
* appointmentType.coding[omsorgsNiva] ^binding.description = "Volven"
* appointmentType.coding[kontaktType] from urn:oid:2.16.578.1.12.4.1.1.8432 (extensible)
* appointmentType.coding[kontaktType] ^short = "Volven 8432"
* appointmentType.coding[kontaktType] ^definition = "Volven 8432"
* appointmentType.coding[kontaktType] ^mustSupport = false
* appointmentType.coding[kontaktType] ^binding.description = "Volven"
* appointmentType.coding[innbygger] from urn:oid:2.16.578.1.12.4.1.1.7617 (extensible)
* appointmentType.coding[innbygger] ^short = "Volven 7617"
* appointmentType.coding[innbygger] ^definition = "Volven 7617"
* appointmentType.coding[innbygger] ^mustSupport = false
* appointmentType.coding[innbygger] ^binding.description = "Volven"
* participant.actor ^slicing.discriminator.type = #type
* participant.actor ^slicing.discriminator.path = "resolve()"
* participant.actor ^slicing.rules = #open
* participant.actor contains
    helsepersonell 0..* and
    pasient 0..* and
    sted 0..1
* participant.actor[helsepersonell] only Reference (Practitioner or PractitionerRole)
* participant.actor[pasient] only Reference (Patient)
* participant.actor[sted] only Reference (Location or HealthcareService)
