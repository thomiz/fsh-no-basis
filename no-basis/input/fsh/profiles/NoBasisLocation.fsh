Profile: NoBasisLocation
Parent: Location
Id: no-basis-Location
Title: "no-basis-Location"
Description: "Basisprofil for Norwegian Location information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific location information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^version = "2.0.17"
* ^status = #active
* ^date = "2019-01-31"
* . ^definition = "Details and position information for a physical place where services are provided  and resources and participants may be stored, found, contained or \r\naccommodated.\r\n\r\nno-basis: The use-case for no-basis-Location is representation of organization structure to describe where a specific department or healthcare service is offered."
* type from NoBasisLocationType (extensible) 
* type ^definition = "no-basis: The Location.type can also indicate a virtual meeting by using codes for virtual location like video or telephone"
* address only NoBasisAddress
* managingOrganization only Reference(Organization or NoBasisOrganization)
* managingOrganization ^type.versioning = #specific
* endpoint only Reference(Endpoint or NoBasisEndpoint)
* endpoint ^definition = "no-basis don't use this element to reference endpoints registered in the Norwegian Address register (endpoints connected to a kommunikasjonspart in tjenestebasert adressering). Endpoints registered in the Norwegian Address register should only be referenced through a kommunikasjonspart-Organization resource.\r\n\r\nTechnical endpoints providing access to services operated for the location."
