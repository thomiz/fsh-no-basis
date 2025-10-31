# PatientAppointmentResponseExample - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientAppointmentResponseExample**

## Example AppointmentResponse: PatientAppointmentResponseExample

Profile: [no-basis-AppointmentResponse](StructureDefinition-no-basis-AppointmentResponse.md)

**no-basis-shortnotice**: true

**appointment**: [MRI results discussion](Appointment-d6c523ec-b520-4221-a8d6-c1c58911ce7a.md)

**actor**: [Peter James Chalmers](Patient-e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473.md)

**participantStatus**: Accepted



## Resource Content

```json
{
  "resourceType" : "AppointmentResponse",
  "id" : "PatientAppointmentResponseExample",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/ig/StructureDefinition/no-basis-AppointmentResponse"
    ]
  },
  "extension" : [
    {
      "url" : "http://hl7.no/fhir/ig/StructureDefinition/no-basis-shortnotice",
      "valueBoolean" : true
    }
  ],
  "appointment" : {
    "reference" : "Appointment/d6c523ec-b520-4221-a8d6-c1c58911ce7a",
    "display" : "MRI results discussion"
  },
  "actor" : {
    "reference" : "Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473",
    "type" : "Patient",
    "display" : "Peter James Chalmers"
  },
  "participantStatus" : "accepted"
}

```
