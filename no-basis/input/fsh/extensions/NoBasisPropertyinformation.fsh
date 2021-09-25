Extension: NoBasisPropertyinformation
Id: no-basis-propertyinformation
Title: "no-basis-propertyinformation"
Description: "This basis extension describes information identifying norwegian real property."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2018-06-13T12:21:26.15+00:00"
* ^version = "2.0.8"
* ^date = "2018-10-26"
* ^context.type = #element
* ^context.expression = "Address"
* . ^short = "real property identification"
* . ^definition = "Additional information identifying norwegian real property."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    cadastralUnitNumber 0..1 and
    propertyUnitNumber 0..1 and
    leaseholdNumber 0..* and
    condominiumUnitNumber 0..* and
    municipality 0..*
* extension[cadastralUnitNumber] ^short = "cadastral unit number"
* extension[cadastralUnitNumber] ^definition = "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer. Gårdsnummer is called Cadastral unit number in English."
* extension[cadastralUnitNumber] ^comment = "Gårdsnummer"
* extension[cadastralUnitNumber] ^alias[0] = "cadastral unit number"
* extension[cadastralUnitNumber] ^alias[+] = "gårdsnummer"
* extension[cadastralUnitNumber].value[x] only integer
* extension[propertyUnitNumber] ^short = "Property unit number"
* extension[propertyUnitNumber] ^definition = "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. In addition some real property is split into sections identified by its seksjonsnummer. Bruksnummer is called Property unit number in English."
* extension[propertyUnitNumber] ^comment = "bruksnummer"
* extension[propertyUnitNumber] ^alias[0] = "Property unit number"
* extension[propertyUnitNumber] ^alias[+] = "bruksnummer"
* extension[propertyUnitNumber].value[x] only integer
* extension[leaseholdNumber] ^short = "Leasehold number"
* extension[leaseholdNumber] ^definition = "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition real property can be rented out, the area of the real property that is rented is measured and is further identified by its festenummer. Festenummer is called Leasehold number in english."
* extension[leaseholdNumber] ^comment = "Festenummer"
* extension[leaseholdNumber] ^alias[0] = "Leasehold number"
* extension[leaseholdNumber] ^alias[+] = "Festenummer"
* extension[leaseholdNumber].value[x] only integer
* extension[condominiumUnitNumber] ^short = "Condominium unit number"
* extension[condominiumUnitNumber] ^definition = "Identification of a real property in Norway is defined using gårdsnummer, bruksnummer and kommunenummer. In addition some real property is split into sections identified by its seksjonsnummer. Seksjonsnummer is called Condominium unit number in English."
* extension[condominiumUnitNumber] ^comment = "Seksjonsnummer"
* extension[condominiumUnitNumber] ^alias[0] = "Condominium unit number"
* extension[condominiumUnitNumber] ^alias[+] = "seksjonsnummer"
* extension[condominiumUnitNumber].value[x] only integer
* extension[municipality] ^short = "Identification of the Municipality"
* extension[municipality] ^definition = "The norwegian kommune identifies an administrative geographic unit in Norway called kommune by a predefined number and its official name."
* extension[municipality] ^alias[0] = "Kommune"
* extension[municipality] ^binding.description = "kommunenummer"
* extension[municipality].value[x] only Coding
* extension[municipality].value[x] from urn:oid:2.16.578.1.12.4.1.1.3402 (required)
* extension[municipality].value[x] ^short = "Kommunenummer according to CodeSystem"
* extension[municipality].value[x] ^definition = "The norwegian kommunenummer identifies an administrative geographic unit in Norway called kommune by a predefined number. The number should be coded according to CodeSystem Kommunenummer og regionale spesialkoder (OID=3402)."
* extension[municipality].value[x] ^alias[0] = "kommunenummer"
* extension[municipality].value[x] ^binding.description = "Kommunenummer according to CodeSystem"
* url only uri