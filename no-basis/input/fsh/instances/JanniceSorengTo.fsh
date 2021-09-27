Instance: JanniceSorengTo
InstanceOf: NoBasisPatient
Usage: #example
* extension.extension.url = "code"
* extension.extension.valueCodeableConcept = urn:iso:std:iso:3166#NO
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
* identifier[0].system = "urn:oid:2.16.578.1.12.4.1.4.1"
* identifier[=].value = "21030550231"
* identifier[+].system = "http://profil.visma.no/lopenummer"
* identifier[=].value = "123"
* name.family = "SørengTo"
* name.given = "Jannice"
* telecom.system = #phone
* telecom.value = "+4733445566"
* telecom.use = #home
* gender = #female
* address.extension[no-basis-propertyinformation].extension[municipality].valueCoding = urn:oid:2.16.578.1.12.4.1.1.3402#0301 "Oslo"
* address.extension[no-basis-address-official].valueBoolean = true
* address.use = #home
* address.line = "Karisvingen 44"
* address.city = "Oslo"
* address.district.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-municipalitycode"
* address.district.extension.valueCoding = $kommunenummer-alle#0301
* address.district = "Oslo"
* address.postalCode = "0603"
* address.country = "NO"
* maritalStatus = $v3-MaritalStatus#U "unmarried"
* contact.relationship[0] = $v2-0131#C "Emergency Contact"
* contact.relationship[+].text = "Bror"
* contact.name.extension.url = "http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* contact.name.extension.valueString = "Pårørende"
* contact.name.text = "Pål Pårørende Olsen"
* contact.name.family = "Olsen"
* contact.name.given = "Pål"
* communication.language.text = "Norsk"
* generalPractitioner.identifier.system = "urn:oid:2.16.578.1.12.4.1.2"
* generalPractitioner.identifier.value = "720"
* generalPractitioner.display = "SIDSEL AASE JAVERY"