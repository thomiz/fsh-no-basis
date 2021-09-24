Extension: NoBasisUrbanDistrict
Id: no-basis-urban-district
Title: "no-basis-urban-district"
Description: "Simple extension containing information about what part of a norwegian city the patient is a resident. Administrative purpose."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2018-06-13T12:22:12.74+00:00"
* ^version = "2.0.6"
* ^date = "2018-10-26"
* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Address"
* ^context[+].type = #element
* ^context[=].expression = "Person"
* ^context[+].type = #element
* ^context[=].expression = "Practitioner"
* . ^alias[0] = "bydel"
* . ^alias[+] = "urban district"
* value[x] only Coding
* value[x] from urn:oid:2.16.578.1.12.4.1.1.3403 (required)
* value[x] ^short = "Urban District information"
* value[x] ^definition = "The name and number of the bydel (part of the city). If coded this information should be coded according to CodeSystem urn:oid:2.16.578.1.12.4.1.1.3403"
* value[x] ^alias[0] = "Bydel"
* value[x] ^alias[+] = "Urban district"
* value[x] ^binding.description = "Bydel"