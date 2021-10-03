Profile: NoBasisAllergyIntolerance
Parent: AllergyIntolerance
Id: no-basis-AllergyIntolerance
Title: "no-basis-AllergyIntolerance"
Description: "Basis profile for allergy intolerance, to be used in Norway. The profile is adapted to support the norwegian standard for critical information (KI standard)."
* ^version = "2.0.17"
* ^status = #active
* ^date = "2019-07-03"
* . ^definition = "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.\r\n\r\nNorwegian profile:  \r\nno-basis-AllergyIntolerance is the basic profile for communicating Allergy intoleeance identifed for a patient. It is adapted to be used in Norway. The profile has the following changes from AllergyIntolerance:\r\n- There are restrictions to use verificationStatus since KI is using Certainty that has similar use\r\n- Reference to patient is changes. no-basis-patient should be used.\r\n- Substance is required and should include one of: ATC, FestSubstance, FestMedication\r\n- manifestation is changed to use codingsystem 7497\r\n- the profile is extended with certanity and sourceOfInformation to support national KI standard"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoBasisSourceofinformation named sourceofinformation 0..*
* clinicalStatus ^definition = "Inaktiv if refuted or entered-in-error, others = active."
* verificationStatus ^short = "unconfirmed | presumed | confirmed | refuted | entered-in-error"
* verificationStatus ^definition = "Mapping KI sannsynlighet: KJ: \r\nMistenkt=unconfirmed\r\nSannsynlig=presumed\r\nBekreftet=confirmed\r\nAvkreftet = refuted\r\nSlette = entered-in-error"
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification" (exactly)
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
   ATC 0..* and
   FESTSubstance 0..* and
   FESTMedication 0..*
* code.coding[ATC] ^sliceName = "ATC"
* code.coding[ATC].system = "http://www.whocc.no/atc" (exactly)
* code.coding[FESTSubstance] ^sliceName = "FESTSubstance"
* code.coding[FESTSubstance].system = "http://ehelse.no/FESTSubstance" (exactly)
* code.coding[FESTMedication] ^sliceName = "FESTMedication"
* code.coding[FESTMedication].system = "http://ehelse.no/FESTMedication" (exactly)
* patient only Reference(NoBasisPatient)
* recorder only Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or NoBasisPatient or NoBasisPractitioner or NoBasisPractitionerRole or NoBasisRelatedPerson)
* asserter only Reference(Patient or RelatedPerson or Practitioner or PractitionerRole or NoBasisPractitioner or NoBasisPractitionerRole or NoBasisPatient or NoBasisRelatedPerson)
* reaction 1..1
* reaction.manifestation ..1
* reaction.manifestation ^definition = "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event. Coding system 7497 shall be used."
* reaction.manifestation.coding 1..1
* reaction.manifestation.coding.system 1..
* reaction.manifestation.coding.system = "urn:uid:2.16.578.1.12.4.1.1.7497" (exactly)
* reaction.manifestation.coding.code 1..
* reaction.manifestation.coding.display 1..
* reaction.severity ^definition = "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations. Mapping to KI standard  is Severe=Alvorlig. Moderate=Mild=Mindre alvorlig."