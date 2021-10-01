# Changelog STU3

Summary of changes from STU3 to R4 versions of the no-basis profiles.

## Changes

### Extensions

New extension for Person nationality: no-basis-person-nationality
New extension added for Person citizenship: no-basis-person-citizenship

### Patient

Patient nationality changed to Patient citizenship to reflect citizenship instead of nationality (statsborgerskap).
Patient nationality removed.
Removed extension for urban district from no-basis-Patient (added to no-basis-Address).

### Address

Added extension for urban district to no-basis-Address: Address.extension:urbanDistrict
Removed extension for urban district from no-basis-Patient.
Changed cardinality of Address.propertyinformation from 0..* -> 0..1

### HumanName
HumanName.family 1..1 -> 0..1
HumanName.given 1..1 -> 0..1

### CodeSystem/ValueSet
no-basis-marital-status CodeSystem and ValueSet added
no-basis-family-relation.codesystem and ValueSet added
no-basis-parental-responsibility CodeSystem and ValueSet added
no-basis-connection-type.codesystem and ValueSet added for ebxml and amqp connection types

### Practitioner
Practitioner.qualification.code:healthPersonnelSpecialization kodeverk 7426

### PractitionerRole
PractitionerRole.specialty Change of codesystem 7426 to 8451 Fagområde (OID=8451), alias added "fagområde"
PractitionerRole.code.coding.system changed from 7426 to 9034

### HealthcareService
HealthcareService.providedby.identifier added slices for RSH and ENH
HealthcareService.category 9040 changed from preferred to example. Updated documentation: "Usually not necesarry"
HealthcareService.speciality now contains 4 slices
HealthcareService.specialty: Slices for 8655 and 8654 added
HealthcareService.specialty: Slices for 8451 added
HealthcareService.specialty: Slices for 8452, 8453 and 8454 removed
HealthcareService.endpoint: Reference can be Endpoint or no-basis-Endpoint

### Endpoint
No-basis-Endpoint.managingOrganization.identifier now contains slices for ENH and RSH identifier values

### RelatedPerson

RelatedPerson.relationship:sivilstand changed to RelatedPerson.relationship:maritalStatus
RelatedPerson.relationship:familierelasjon changed to RelatedPerson.relationship:familyRelation, valueset binding http://hl7.no/fhir/ValueSet/relatedperson-family-relation
Added slice for RelatedPerson.relationship:parental, valuesetbinding: relatedperson-parental-responsibility

## Documentation changes:

### HealthcareService
No-basis-HealthcareService added: "The typical use-case is to include information regarding what Healthcare related services, support functions or activities awailable at a Organizaiton or Location."

No-basis-HealthcareService definition added: "The organization that provides this healthcare service.&#xD;&#xA;&#xD;&#xA;no-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization should use a different reference scheme defined by the organization."
No-basis-HealthcareService.category: "Example of category. Helsevirksomhet type (OID=9040), identifies the virksomhetstype used in Adresseregisteret. This element is usually not necessary to describe the HealthcareService adequately."
HealthcareService.type: no-basis: This element is usually not necessary to describe the HealthcareService adequately. Further coding can be used when common set of SNOMED codes are agreed for healthc care service types.&#xD;&#xA;&#xD;&#xA;The specific type of service that may be delivered or performed. "
HealthcareService.specialty: "no-basis: Helsehjelpområde is given by the specialty element, preferred coding includes 8655 and 8654 codesystems. Type and category is usually not necessary to describe the HealthcareService adequately.&#xD;&#xA;&#xD;&#xA;The specific type defined in a codesystem allowed included in the valueset."

### Endpoint
No-basis.Endpoint.definition: "for ebXML and AMQP messages in Norway one is expected to list all mesage types that the endpoint supports using the CodeSystem Meldingens funksjon (OID=8279) as a minimum. To describe complete version information to determine the type and version of the messages the endpoint supports, a CapabilityStatement can be used to describe the endpoints communication capabilities in detail.&#xD;&#xA;REST endpoints are expected to use the code &quot;any&quot; from https://www.hl7.org/fhir/codesystem-endpoint-payload-type.html. Proper FHIR Restful API's are expected to serve a CapabilityStatement from the base uri specified.&#xD;&#xA;Other payload types can be given using codes from the ValueSet http://hl7.org/fhir/ValueSet/endpoint-payload-type. &#xD;&#xA;&#xD;&#xA;The payload type describes the acceptable content that can be communicated on the endpoint."
No-basis-Endpoint added: "no-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization. &#xD;&#xA;"
No-basis-Endpoint.address added: "/&quot; or &quot;amqps://&quot; prefix.&#xD;&#xA;REST endpoints will have &quot;http://&quot; or &quot;https://&quot; prefix."


### Practitioner
No-basis-Practitioner added: "2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner."

### PractitionerRole
No-basis-PractitionerRole added: "The main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization."
PractitionerRole.code.definition: "no-basis: code related to a speciality that the Practitioner can perform in the role within an organization&#xD;&#xA;&#xD;&#xA;Specific specialty of the practitioner."

### RelatedPerson

No-basis-RelatedPerson added: "Typical use-case for no-basis-RelatedPerson involves information about relations person-patient.&#xD;&#xA;- Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)&#xD;&#xA;- Other relationship information registered on a patient or person neccessary for patient treatment&#xD;&#xA;- Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource"

### Location
No-basis-Location definition added: "Details and position information for a physical place where services are provided  and resources and participants may be stored, found, contained or &#xD;&#xA;accommodated.&#xD;&#xA;&#xD;&#xA;no-basis: The use-case for no-basis-Location is representation of organization structure to describe where a specific department or healthcare service is offered."


## Bugfixes

### Person
No-basis-Person managingOrganization reference both Organization and no-basis-Organization

### Endpoint
No-basis-Endpoint.address: bugfix in documentation "suffix" to "prefix" and text/xml type for ebxml payloadMimeType

### Practitioner
No-basis-Practitioner.qualification.healthPersonnelSpecialization slice fixed binding from 7704 (same as the approvalType slice) to klassifikasjon av spesialiteter (OID=7426) CodeSystem

### No-basis-Person
Required fixed string of "The actual Fødselsnummer" in the FNR and DNR slices of the profile. Requirement removed.
~~~~
<fixedString value="The actual Fødselsnummer" />
~~~~