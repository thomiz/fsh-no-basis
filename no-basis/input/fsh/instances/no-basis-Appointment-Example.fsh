Instance: PatientAppointmentResponseExample
InstanceOf: NoBasisAppointmentResponse
Description: "Example of Patient response to an appointment using no-basis profile. The profile is identical to the basis profile axept there is a extension that can be used for patient to signal if the patient can come on short notice to an appointment. The example is similar to http://hl7.org/fhir/R4/appointmentresponse-example.json.html with adition for the extension."
* appointment = Reference(Appointment/d6c523ec-b520-4221-a8d6-c1c58911ce7a) "MRI results discussion"
* actor = Reference(Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* participantStatus = #accepted
* extension[shortNotice].valueBoolean = true
* actor.type = "Patient"


Instance: PatientExample
InstanceOf: Patient
Usage: #example
* id = "e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473"
* name.use = #official
* name.family = "Chalmers"
* name.given = "Peter James"

Alias: $appointment-type = http://terminology.hl7.org/CodeSystem/v2-0276

Instance: AppointmentExample
InstanceOf: NoBasisAppointment
Usage: #example
* id = "d6c523ec-b520-4221-a8d6-c1c58911ce7a"
* status = #booked
* appointmentType.coding[0] = $appointment-type#CHECKUP
* appointmentType.coding[+].code = #Ordinær
* appointmentType.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.7617"
* description = "Discussion on the results of your recent MRI"
* start = "2023-08-10T09:00:00Z"
* end = "2023-08-10T11:00:00Z"
* comment = "Further expand on the results of the MRI and determine the next actions that may be appropriate."
* participant[0].actor = Reference(Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473) "Peter James Chalmers"
* participant[=].required = #required
* participant[=].status = #accepted