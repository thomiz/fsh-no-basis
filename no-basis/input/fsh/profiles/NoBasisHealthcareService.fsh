Profile: NoBasisHealthcareService
Parent: HealthcareService
Id: no-basis-HealthcareService
Title: "no-basis-HealthcareService"
Description: """Basisprofil for Norwegian Healthcare Service information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare Services. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.

The typical use-case is to include information regarding what Healthcare related services, support functions or activities provided by an Organization or awailable at a Location."""
* ^version = "2.0.17"
* ^status = #active
* ^date = "2019-05-20"
* . ^definition = "The details of a healthcare service available at a location. Should only be used for clinical healthcareservices offered by a PractitionerRole or by an Organization."
* identifier ^mustSupport = false
* providedBy only Reference(Organization or NoBasisOrganization)
* providedBy obeys no-basis-providedBy-identifier
* providedBy ^definition = "The organization that provides this healthcare service.\r\n\r\nno-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization."
* providedBy.identifier ^short = "The logical reference of organization that provides this healthcare service."
* providedBy.identifier ^definition = "no-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization.\r\n\r\nno-basis recommends if an identifier is provided the identifier type or system should be provided."
* providedBy.identifier obeys no-basis-identifier-system
* category from urn:oid:2.16.578.1.12.4.1.1.9040 (example)
* category ^short = "HealthcareService category"
* category ^definition = "Example of category. Helsevirksomhet type (OID=9040), identifies the virksomhetstype used in Adresseregisteret. This element is usually not necessary to describe the HealthcareService adequately."
* category ^alias = "virksomhetstype"
* category ^binding.description = "virksomhetstype 9040"
* type ^definition = "no-basis: This element is usually not necessary to describe the HealthcareService adequately. Further coding can be used when common set of SNOMED codes are agreed for healthc care service types.\r\n\r\nThe specific type of service that may be delivered or performed."
* specialty ^definition = "no-basis: Helsehjelpområde is given by the specialty element, preferred coding includes 8655 and 8654 codesystems. Type and category is usually not necessary to describe the HealthcareService adequately.\r\n\r\nThe specific type defined in a codesystem allowed included in the valueset."
* specialty ^alias = "helsehjelpsområde"
* specialty.coding ^slicing.discriminator.type = #value
* specialty.coding ^slicing.discriminator.path = "system"
* specialty.coding ^slicing.description = "Two possible codings are given for the type element"
* specialty.coding ^slicing.rules = #open
* specialty.coding contains 
   8655 0..* and
   8654 0..* and
   9151 0..* and
   8451 0..*
* specialty.coding[8655] from urn:oid:2.16.578.1.12.4.1.1.8655 (preferred)
* specialty.coding[=] ^sliceName = "8655"
* specialty.coding[=] ^short = "Code describing the Helsehjelpområde"
* specialty.coding[=] ^definition = "no-basis: Helsehjelpsområde (OID=8655) used to code the kind of clinical service the organization offers the patients through this HealthcareService\r\nAlso use Klinisk/medisinsk service (OID=8654)?"
* specialty.coding[=] ^binding.description = "Helsehjelpsområde"
* specialty.coding[=].system 1..
* specialty.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.8655" (exactly)
* specialty.coding[=].system ^short = "Identity of the 8655 codesystem"
* specialty.coding[=].code 1..
* specialty.coding[8654] from urn:oid:2.16.578.1.12.4.1.1.8654 (preferred)
* specialty.coding[=] ^sliceName = "8654"
* specialty.coding[=] ^definition = "Klinisk/medisinsk service (OID=8654)"
* specialty.coding[=] ^binding.description = "Klinisk/medisinsk service"
* specialty.coding[=].system 1..
* specialty.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.8654" (exactly)
* specialty.coding[=].code 1..
* specialty.coding[9151] from urn:oid:2.16.578.1.12.4.1.1.9151 (preferred)
* specialty.coding[=] ^sliceName = "9151"
* specialty.coding[=] ^definition = "IPLOS tjenestetype (OID=9151)"
* specialty.coding[=] ^binding.description = "IPLOS tjenestetype"
* specialty.coding[=].system 1..
* specialty.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.9151" (exactly)
* specialty.coding[=].code 1..
* specialty.coding[8451] from urn:oid:2.16.578.1.12.4.1.1.8451 (preferred)
* specialty.coding[=] ^sliceName = "8451"
* specialty.coding[=] ^definition = "Fagområde (OID=8451)"
* specialty.coding[=] ^binding.description = "Fagområde"
* specialty.coding[=].system 1..
* specialty.coding[=].system = "urn:oid:2.16.578.1.12.4.1.1.8451" (exactly)
* specialty.coding[=].system ^definition = "The identification of the Fagområde (OID=8451) code system."
* specialty.coding[=].code 1..
* location only Reference(Location or NoBasisLocation)
* endpoint only Reference(Endpoint or NoBasisEndpoint)
* endpoint ^definition = "no-basis: In Norway endpoints for communication should be connected to a kommunikasjonspart-Organization identified with HERid and collected from the Norwegian Address register. Endpoints not registered in the Norwegian Address register can use other schemes of connecting endpoints to Organizations, PractitionerRole or HealthcareService.\r\n\r\nTechnical endpoints providing access to services operated for the specific healthcare services defined at this resource."
* endpoint ^mustSupport = false