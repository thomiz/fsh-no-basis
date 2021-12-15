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
* participant ^slicing.discriminator.type = #type
* participant ^slicing.discriminator.path = "resolve().actor"
* participant ^slicing.rules = #open
* participant contains
    practitioner 0..* and
    patient 0..* and
    location 0..1
* participant[practitioner] ^short = "Appointments should contain information regarding the pracitioner involved. The Appointment.actor should contain a Practitioner or PractitionerRole reference"
* participant[practitioner].actor only Reference(Practitioner or PractitionerRole)
* participant[patient] ^short = "Appointments should contain information regarding the patient involved. The Appointment.actor should contain  a Patient reference"
* participant[patient].actor only Reference(Patient)
* participant[location] ^short = "Appointments should contain information regarding where the appointment is executed. The Appointment.actor should contain a Location or HealthcareService reference"
* participant[location].actor only Reference(Location or HealthcareService)
