Profile: NoBasisMedicationStatement
Parent: MedicationStatement
Id: no-basis-MedicationStatement
Title: "no-basis-MedicationStatement"
Description: "Basis profile for medication statement, to be used in Norway. The profile is adapted to include norwegian specific features and constraints."
* ^version = "2.0.1"
* ^status = #active
* ^date = "2019-09-20"
* . ^definition = "A record of a medication that is being consumed by a patient.   A MedicationStatement may indicate that the patient may be taking the medication now, or has taken the medication in the past or will be taking the medication in the future.  The source of this information can be the patient, significant other (such as a family member or spouse), or a clinician.  A common scenario where this information is captured is during the history taking process during a patient visit or stay.   The medication information may come from sources such as the patient's memory, from a prescription bottle,  or from a list of medications the patient, clinician or other party maintains \r\n\r\nNorwegian profile: \r\nno-basis-Medication statement is the basic profile for communicating what the patient is using, has been using og plan to use. To be used in PLL and similar resources that communicate information about medication use. The profile has the following changes from MedicationStatement:\r\n- PLL-id is added as an identifier\r\n- reference to no-basis-medication is added and should be used as prefered reference. \r\n- reference to no-basis-patient is added (subject) and should be used as prefered reference.\r\n- ICPC2 and ICD10 is added as prefered reasonCode."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = true
* identifier ^slicing.rules = #openAtEnd
* identifier contains PLL-id 0..1
* identifier[PLL-id] ^short = "Identifier of norwegian PLL registration"
* identifier[PLL-id] ^definition = "If the medicationstatement is part of PLL, then PLL-id shall be registered."
* identifier[PLL-id].type ^fixedCodeableConcept.text = "PLL"
* identifier[PLL-id].type.text 1..
* identifier[PLL-id].type.text = "PLL" (exactly)
* status ^definition = "A code representing the patient or other source's judgment about the state of the medication used that this statement is about.  Generally this will be active or completed.\r\n\r\nactive = start date has passed and end date is not reached\r\ncompleted = end date is passed (for treatement that had an initial stop date)\r\nentered-in-error = deleted (ref Norwegian laws)\r\nintended = start date is not reached\r\nstopped = end date is passed and it was an active desition to stop the treatment\r\non-hold = the treatment is paused"
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #openAtEnd
* medicationReference 1..
* medicationReference only Reference(NoBasisMedication)
* medicationReference ^sliceName = "medicationReference"
* medicationReference ^type.aggregation = #bundled
* subject only Reference(NoBasisPatient)
* reasonCode ^slicing.discriminator.type = #value
* reasonCode ^slicing.discriminator.path = "coding.system"
* reasonCode ^slicing.rules = #open
* reasonCode contains
    ICPC2 0..1 and
    ICD10 0..1
* reasonCode[ICPC2].coding.system 1..
* reasonCode[ICPC2].coding.system = "urn:oid:2.16.578.1.12.4.1.1.7170" (exactly)
* reasonCode[ICPC2].coding.code 1..
* reasonCode[ICPC2].coding.display 1..
* reasonCode[ICD10].coding.system 1..
* reasonCode[ICD10].coding.system = "urn:oid:2.16.578.1.12.4.1.1.7110" (exactly)
* reasonCode[ICD10].coding.code 1..
* reasonCode[ICD10].coding.display 1..