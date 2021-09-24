Extension: NoBasisAddressOfficial
Id: no-basis-address-official
Title: "no-basis-address-official"
Description: "Defines the concept of an officialy registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2019-05-15T08:03:50.475+00:00"
* ^version = "2.0.6"
* ^experimental = false
* ^date = "2019-05-15"
* ^context.type = #element
* ^context.expression = "Address"
* . ..1
* . ^short = "The concept of an officially registered address"
* . ^definition = "Defines the concept of an officially registered address in Norway. Usually this will be the adress registered in \"Folkeregisteret\" for persons or \"Enhetsregisteret\" for organizations."
* value[x] only boolean
* value[x] ^definition = "True for officially registered addresses, false for other addresses"