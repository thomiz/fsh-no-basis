Profile: NoBasisPerson
Parent: Person
Id: no-basis-Person
Title: "no-basis-Person"
Description: """Basisprofil for Norwegian Person information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.

The no-basis-Person resource main use-case is with regards to information describing persons that are living in Norway. The information is typically available from the Norwegian "folkeregister" and contains information describing all Norweigan citizens and individuals working and living in Norway."""
* ^version = "2.0.8"
* ^status = #active
* ^date = "2019-05-20"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this person. Should be at Fødselsnummer or D-nummer\r\n\r\nIdentifier for a person within a particular scope."
* identifier contains
    FNR 0..* and
    DNR 0..*
* identifier[FNR] ^short = "Norwegian FNR"
* identifier[FNR] ^definition = "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided."
* identifier[FNR] ^alias = "fødselsnummer"
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* identifier[FNR].system ^short = "Identification of the Norwegian FNR"
* identifier[FNR].system ^definition = "Identifies that this is a Norwegian Fødselsnummer"
* identifier[FNR].value 1..
* identifier[FNR].value ^definition = "The Norwegian Fødselsnummer"
* identifier[FNR].value ^alias = "fødselsnummer"
* identifier[FNR].value ^example.label = "Fødselsnummer"
* identifier[FNR].value ^example.valueString = "15076500565"
* identifier[DNR] ^short = "The D-nummer of the patient"
* identifier[DNR] ^definition = "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)"
* identifier[DNR] ^alias = "D-nummer"
* identifier[DNR].system 1..
* identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* identifier[DNR].system ^short = "The identification of the D-nummer"
* identifier[DNR].system ^definition = "The identification of the Norwegian D-nummer"
* identifier[DNR].value 1..
* identifier[DNR].value ^definition = "The actual Norwegian D-nummer"
* identifier[DNR].value ^example.label = "D-nummer"
* identifier[DNR].value ^example.valueString = "700199 50032"
* name only NoBasisHumanName
* address only NoBasisAddress
* address ^short = "Norwegian address"
* address ^definition = "http://hl7.no/fhir/StructureDefinition/no-basis-Address"
* managingOrganization only Reference(Organization)