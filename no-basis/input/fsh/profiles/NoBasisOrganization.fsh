Profile: NoBasisOrganization
Parent: Organization
Id: no-basis-Organization
Title: "no-basis-Organization"
Description: "Basisprofil for Norwegian Organization information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The basis profile describes information structures typically used for identifying norwegian organizations. Should be used as a basis for further profiling in use-cases where other specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2020-04-22T10:49:58.004+00:00"
* ^version = "2.0.15"
* ^status = #active
* ^date = "2019-05-20"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    ENH 0..* and
    RSH 0..*
* identifier[ENH] ^short = "Organisasjonsnummer from Enhetsregisteret"
* identifier[ENH] ^alias[0] = "organisasjonsnummer"
* identifier[ENH] ^alias[+] = "organization number"
* identifier[ENH].system 1..
* identifier[ENH].system = "urn:oid:2.16.578.1.12.4.1.4.101" (exactly)
* identifier[ENH].value 1..
* identifier[RSH] ^short = "Nasjonalt register over enheter i spesialisthelsetjenesten (RESH-ID)"
* identifier[RSH].system 1..
* identifier[RSH].system = "urn:oid:2.16.578.1.12.4.1.4.102" (exactly)
* identifier[RSH].value 1..
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.rules = #open
* type ^definition = "no-basis provides two commonly used slices to indicate Organization.type. Both ValueSets are used in the Norweian realm and is currently maintained at Volven.no: \r\n- Organisatorisk nivå (OID=8628)\r\n- Organisatorisk betegnelse (OID=8624)\r\n\r\nThe kind(s) of organization that this is."
* type contains
    organisatoriskNiva 0..* and
    organisatoriskBetegnelse 0..*
* type[organisatoriskNiva] from urn:oid:2.16.578.1.12.4.1.1.8628 (required)
* type[organisatoriskNiva] ^short = "Organisatorisk nivå"
* type[organisatoriskNiva].coding.system 1..
* type[organisatoriskNiva].coding.system = "urn:oid:2.16.578.1.12.4.1.1.8628" (exactly)
* type[organisatoriskNiva].coding.code 1..
* type[organisatoriskBetegnelse] from urn:oid:2.16.578.1.12.4.1.1.8624 (required)
* type[organisatoriskBetegnelse] ^short = "Organisatorisk betegnelse"
* type[organisatoriskBetegnelse].coding.system 1..
* type[organisatoriskBetegnelse].coding.system = "urn:oid:2.16.578.1.12.4.1.1.8624" (exactly)
* type[organisatoriskBetegnelse].coding.code 1..
* address only NoBasisAddress
* partOf only Reference(Organization or NoBasisOrganization)
* contact.address only NoBasisAddress
* endpoint ^definition = "Technical endpoints providing access to services operated for the organization.\r\n\r\nno-basis don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource."