Instance: no-basis-HealthcareService example
InstanceOf: HealthcareService
Usage: #example
* meta.profile = "http://hl7.no/fhir/StructureDefinition/no-basis-HealthcareService"
* identifier.system = "http://hl7.no/shared-ids"
* identifier.value = "HS-12"
* active = true
* providedBy = Reference(Organization/f001) "Burgers University Medical Center"
* providedBy.identifier.system = "urn:oid:2.16.578.1.12.4.1.4.101"
* providedBy.identifier.value = "test"
* category = urn:oid:2.16.578.1.12.4.1.1.9040#101 "Helseforetak/private sykehus"
* specialty = urn:oid:2.16.578.1.12.4.1.1.8655#S0208 "Ortopedisk kirurgi"