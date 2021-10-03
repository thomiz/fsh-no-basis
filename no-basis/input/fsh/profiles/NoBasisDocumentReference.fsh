Profile: NoBasisDocumentReference
Parent: DocumentReference
Id: no-basis-DocumentReference
Title: "no-basis-DocumentReference"
Description: """Basisprofil for Norwegian DocumentReference. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to specification relevant to the use-case.

The profile sets the absolute minimum requirements when searching, fething and storing documents within the healtcare domain. It sets the basic requirements for extensions and terminology which can be present."""
* ^version = "2.0.15"
* ^status = #active
* ^date = "2020-08-21"
* type from NoBasisDocumentReferenceType (required)
* type ^short = "Kind of document"
* type ^definition = "Specifies the particular kind of document referenced using the codes defined in the valueset 'NoBasisDocumentReferenceType'.\r\nSuch as:\r\n- A00-1 Epikriser og sammenfatninger\r\n- A01-2 Kriseplan\r\n- A02-2 Individuell plan\r\n- etc.\r\n\r\nSee valueset 'NoBasisDocumentReferenceType' in the Terminology section for more information on available types"
* type ^comment = "Key metadata element describing the document that describes the exact type of document. Helps humans to assess whether the document is of interest when viewing a list of documents."