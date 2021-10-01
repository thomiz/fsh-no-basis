Profile: NoBasisEndpoint
Parent: Endpoint
Id: no-basis-Endpoint
Title: "no-basis-Endpoint"
Description: """Basisprofil for Norwegian Endpoint information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Endpoing. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.

Resource profile for definition of electronic endpoints used by healthcare organizations to communicate using different protocols. The norwegian profile use-case is to represent endpoints for electronic communication. Fallback solutions using mail or fax has to be indexed in the norwegian master index for healthcare organizations and are not described using this profile."""
* ^version = "2.0.17"
* ^status = #active
* ^date = "2019-05-15"
* . ^definition = "The no-basis profile of the Endpoint resource makes it possible to use the resource for the norwegian service based adressing (tjenestebasert adressering) and other adressing schemes.\r\n\r\nThe technical details of an endpoint that can be used for electronic services, such as for web services providing XDS.b or a REST endpoint for another FHIR server. This may include any security context information."
* identifier ^comment = "no-basis: Adresseregisteret do not provide a identifier for the Endpoints, so any identifier scheme is apropriate."
* connectionType from NoBasisConnectionType (extensible)
* connectionType ^definition = "no-basis:  the connection type should be coded according to http://hl7.org/fhir/ValueSet/endpoint-connection-type. However specific connection types used in Norway can be coded according to http://hl7.no/fhir/ValueSet/no-basis-endpoint-connection-type (amqp, ebxml etc.)\r\n\r\nA coded value that represents the technical details of the usage of this endpoint, such as what WSDLs should be used in what way. (e.g. XDS.b/DICOM/cds-hook)."
* managingOrganization only Reference(Organization or NoBasisOrganization)
* managingOrganization ^definition = "The organization that manages this endpoint (even if technically another organisation is hosting this in the cloud, it is the organisation associated with the data).\r\n\r\nno-basis: In Norway this relates to the organization with the responsibility for the data e.g. \"dataansvarlig\".\r\nno-basis recommends the use of logical reference to an organization using ENH or RSH. To describe a top level organization. Departments within an organization could use a different reference scheme defined by the organization."
* managingOrganization ^alias = "dataansvarlig"
* payloadType ^slicing.discriminator.type = #value
* payloadType ^slicing.discriminator.path = "coding.system"
* payloadType ^slicing.rules = #open
* payloadType ^definition = "no-basis: for ebXML and AMQP messages in Norway one is expected to list all mesage types that the endpoint supports using the CodeSystem Meldingens funksjon (OID=8279) as a minimum. To describe complete version information to determine the type and version of the messages the endpoint supports, a CapabilityStatement can be used to describe the endpoints communication capabilities in detail.\r\nREST endpoints are expected to use the code \"any\" from https://www.hl7.org/fhir/codesystem-endpoint-payload-type.html. Proper FHIR Restful API's are expected to serve a CapabilityStatement from the base uri specified.\r\nOther payload types can be given using codes from the ValueSet http://hl7.org/fhir/ValueSet/endpoint-payload-type. \r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint."
* payloadType contains
    meldingensFunksjon 0..* and
    formatCode 0..*
* payloadType[meldingensFunksjon] from urn:oid:2.16.578.1.12.4.1.1.8279 (required)
* payloadType[meldingensFunksjon] ^definition = "no-basis: for ebXML and AMQP messages in Norway one is expected to list all mesage types that the endpoint supports using the CodeSystem Meldingens funksjon (OID=8279). Version information (version of the payload document) shold be given in the coding.version element.\r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint."
* payloadType[formatCode] from urn:oid:2.16.578.1.12.4.1.1.0000 (required)
* payloadType[formatCode] ^short = "Specific information about payload type and version"
* payloadType[formatCode] ^definition = "no-basis: Specific information about payload type and version. Information about the payload type and version for ebxml and amqp messages\r\n\r\nThe payload type describes the acceptable content that can be communicated on the endpoint."
* payloadMimeType from $bcp13.txt (required)
* payloadMimeType ^definition = "no-basis: should we list relevant codes for ebXML messages? List appropriate media types for FHIR REST endpoints?\r\nXML: application/fhir+xml\r\nJSON: application/fhir+json\r\nRDF: application/fhir+turtle\r\nebXML messages: text/xml\r\n\r\nThe mime type to send the payload in - e.g. application/fhir+xml, application/fhir+json. If the mime type is not specified, then the sender could send any content (including no content depending on the connectionType)."
* address ^definition = "The uri that describes the actual end-point to connect to.\r\n\r\nno-basis: for ebXML messages in Norway one is expected to use mailto: prefix for the endpoint. \r\nFor AMQP messages in Norway one is expected to use \"ampq://\" or \"amqps://\" prefix.\r\nREST endpoints will have \"http://\" or \"https://\" prefix."
* address ^example[0].label = "amqp endpoint"
* address ^example[=].valueUrl = "amqp_endpoint"
* address ^example[+].label = "ebxml endpoint"
* address ^example[=].valueUrl = "ebxml_endpoint"
* address ^example[+].label = "REST endpoint"
* address ^example[=].valueUrl = "REST_endpoint"