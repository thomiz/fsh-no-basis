Profile: DerivedPerson
Parent: NoBasisPerson
Id: derived-Person
Title: "derived-Person"
Description: """Derived person from no-basis-Person for Norwegian Person information."""
* ^version = "0.0.1"
* ^status = #draft
* ^date = "2022-01-10"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this person. Should be at Fødselsnummer or D-nummer\r\n\r\nIdentifier for a person within a particular scope. TNR is also allowed"
* identifier contains
    FNR 0..* and
    DNR 0..* and
	TNR 0..*
* identifier[TNR] ^short = "Norwegian TNR"
* identifier[FNR] ^definition = "TNR is a special form of person identifier"
* identifier[FNR] ^alias = "tnummer"
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.666" (exactly)
* identifier[FNR].system ^short = "Identification of the Norwegian TNR"
* identifier[FNR].system ^definition = "Identifies that this is a TNR"
* identifier[FNR].value 1..
* identifier[FNR].value ^definition = "The Norwegian Tnummer"
* identifier[FNR].value ^alias = "tnummer"
