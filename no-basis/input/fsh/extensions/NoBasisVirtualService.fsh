Extension: NoBasisVirtualService
Id: no-basis-virtual-service
Title: "no-basis-Virtual-Service"
Description: "The VirtualService is based on VirtualServiceDetail structure from R5 and defines details of a virtual communication capability, such as a web conference call."
* ^status = #active
* . ^short = "Virtual Service"
* . ^definition = "The VirtualService structure defines details of a virtual communication capability, such as a web conference call."
* ^context.type = #element
* ^context.expression = "Appointment"
* extension contains
    channelType 0..1 and
    virtualAddress 0..1 and
    additionalInfo 0..* and
    maxParticipants 0..1 and
    sessionKey 0..1
* extension[channelType] ^short = "Channel Type"
* extension[channelType] ^definition = "The type of virtual service to connect to."
* extension[channelType].value[x] only Coding
* extension[channelType].value[x] from NoBasisVirtualServiceType (example)
* extension[channelType].value[x] ^short = "Valuset for virtual servie."
* extension[channelType].value[x] ^definition = "The valuesett inherits all codes from http://hl7.org/fhir/contact-point-system and http://hl7.org/fhir/virtual-service-type. Virtual-service-type is from R5. "
* extension[virtualAddress] ^short = "Contact address/number"
* extension[virtualAddress] ^definition = "Address or number needs to be used for a user to connect to the virtual service to join. "
* extension[virtualAddress].value[x] only string or url or ContactPoint
* extension[additionalInfo] ^short = "Address to see alternative connection details"
* extension[additionalInfo] ^definition = "Address to see alternative connection details. "
* extension[additionalInfo].value[x] only url
* extension[maxParticipants] ^short = "Maximum number of participants supported by the virtual service."
* extension[maxParticipants] ^definition = "Maximum number of participants supported by the virtual service. "
* extension[maxParticipants].value[x] only positiveInt
* extension[sessionKey] ^short = "Session Key required by the virtual service"
* extension[sessionKey] ^definition = "Session Key required by the virtual service. "
* extension[sessionKey].value[x] only string