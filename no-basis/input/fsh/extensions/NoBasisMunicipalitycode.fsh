Extension: NoBasisMunicipalitycode
Id: no-basis-municipalitycode
Title: "no-basis-municipalitycode"
Description: "Coded value for municipality/county Norwegian kommune"
* ^version = "2.0.16"
* ^date = "2021-04-09"
* ^context.type = #element
* ^context.expression = "Address.district"
* value[x] only Coding
* value[x] from $kommunenummer-alle (required)
* value[x].system ^definition = "All Norwegian kommunenummer/municipalitycodes are published by SSB"
* value[x].code ^short = "Actual kommunenummer"
* value[x].code ^definition = "Norwegian kommunenummer/municipalitycode"