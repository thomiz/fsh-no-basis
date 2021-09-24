Profile: NoBasisAddress
Parent: Address
Id: no-basis-Address
Title: "no-basis-Address"
Description: "Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^meta.versionId = "3"
* ^meta.lastUpdated = "2019-05-15T13:38:12.872+00:00"
* ^version = "2.0.15"
* ^date = "2019-05-15"
* ^purpose = "Norwegian basisprofil for Address resource adding Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NoBasisAddressOfficial named official 0..* and
    NoBasisUrbanDistrict named urbanDistrict 0..1 and
    NoBasisPropertyinformation named propertyInformation 0..*
* extension[official] ^alias[0] = "offisiell adresse"
* extension[urbanDistrict] ^short = "urban district information"
* extension[urbanDistrict] ^definition = "The name and number of the of the urban district of this address."
* extension[propertyInformation] ^short = "Real property identification"
* extension[propertyInformation] ^definition = "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer"
* use ^definition = "The purpose of this address.\r\n\r\nMapping of values to other Norwegian CodeSystems is documented in the implementation guide. In general the address used for visiting the person should have use \"home\" and type \"physical\" or \"both\". The \"official\" flag can be either true or false."
* type ^definition = "Distinguishes between physical addresses (those you can visit) and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.\r\n\r\nMapping of values to other Norwegian CodeSystems is documented in the implementation guide. In general the address used for visiting the person should have use \"home\" and type \"physical\" or \"both\". The \"official\" flag can be either true or false."
* city ^short = "Poststed or city"
* city ^definition = "When a postalcode is given the name of the city must be according to the official list of postalcodes used in Norway.\r\n\r\nThe name of the city, town, village or other community or delivery center."
* city ^alias[0] = "by"
* city ^alias[+] = "poststed"
* district ^short = "name of \"kommune\""
* district ^definition = "Name of the county (norwegian \"kommune\").\r\n\r\nThe name of the administrative area (county)."
* district ^alias[0] = "kommune"
* district.extension ^slicing.discriminator.type = #value
* district.extension ^slicing.discriminator.path = "url"
* district.extension ^slicing.rules = #open
* district.extension contains NoBasisMunicipalitycode named municipalitycode 0..1
* district.extension[municipalitycode] ^short = "Coded value for municipality/county Norwegian kommune"
* district.extension[municipalitycode] ^definition = "Coded value for municipality/county Norwegian kommune"
* state ^short = "norwegian \"fylke\""
* state ^definition = "Name of the norwegian \"fylke\"). If fylkes-number is required \"eiendomsinformasjon\" should be used with koded kommune-number.\r\n\r\nSub-unit of a country with limited sovereignty in a federally organized country. A code may be used if codes are in common use (i.e. US 2 letter state codes)."
* state ^alias[0] = "fylke"
* postalCode ^definition = "A postal code designating a region defined by the postal service.\r\n\r\nIn Norway this is af four digit number defined by the norwegian postal service."
* postalCode ^alias[0] = "postnummer"