Instance: Solid-Aresdoktor-RelatedPerson
InstanceOf: NoBasisRelatedPerson
Usage: #example
* identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier.value = "15080050515"
* patient.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.1"
* patient.identifier.value = "04021950128"
* relationship[0] = $no-basis-family-relation#far
* relationship[+] = $no-basis-parental-responsibility#far
* name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* name.extension.valueString = "SKIKKELIG"
* name.family = "ÆRESDOKTOR"
* name.given = "SOLID"
* address.extension[0].extension[0].url = "cadastralUnitNumber"
* address.extension[=].extension[=].valueInteger = 15
* address.extension[=].extension[+].url = "propertyUnitNumber"
* address.extension[=].extension[=].valueInteger = 557
* address.extension[=].extension[+].url = "municipality"
* address.extension[=].extension[=].valueCoding = urn:oid:2.16.578.1.12.4.1.1.3402#1201 "Bergen"
* address.extension[=].url = "http://hl7.no/fhir/StructureDefinition/no-basis-propertyinformation"
* address.extension[+].url = "http://hl7.no/fhir/StructureDefinition/no-basis-address-official"
* address.extension[=].valueBoolean = true
* address.use = #home
* address.line = "Nyhaugveien 3"
* address.city = "BERGEN"
* address.district = "BERGEN"
* address.postalCode = "5067"
* address.country = "NO"