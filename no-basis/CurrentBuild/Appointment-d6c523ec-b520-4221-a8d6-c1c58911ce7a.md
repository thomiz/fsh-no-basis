# AppointmentExample - v2.2.3-test

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AppointmentExample**

## Example Appointment: AppointmentExample

Profile: [no-basis-Appointment](StructureDefinition-no-basis-Appointment.md)

**status**: Booked

**appointmentType**: A routine check-up, such as an annual physical

**description**: Discussion on the results of your recent MRI

**start**: 2023-08-10 09:00:00+0000

**end**: 2023-08-10 11:00:00+0000

**comment**: Further expand on the results of the MRI and determine the next actions that may be appropriate.

### Participants

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Actor** | **Required** | **Status** |
| * | [Peter James Chalmers](Patient-e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473.md) | Required | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "d6c523ec-b520-4221-a8d6-c1c58911ce7a",
  "meta" : {
    "profile" : [
      "http://hl7.no/fhir/ig/StructureDefinition/no-basis-Appointment"
    ]
  },
  "status" : "booked",
  "appointmentType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0276",
        "code" : "CHECKUP"
      },
      {
        "system" : "urn:oid:2.16.578.1.12.4.1.1.7617",
        "code" : "Ordinær"
      }
    ]
  },
  "description" : "Discussion on the results of your recent MRI",
  "start" : "2023-08-10T09:00:00Z",
  "end" : "2023-08-10T11:00:00Z",
  "comment" : "Further expand on the results of the MRI and determine the next actions that may be appropriate.",
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473",
        "display" : "Peter James Chalmers"
      },
      "required" : "required",
      "status" : "accepted"
    }
  ]
}

```
