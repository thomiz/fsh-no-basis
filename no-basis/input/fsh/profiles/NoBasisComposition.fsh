Profile: NoBasisComposition
Parent: Composition
Id: no-basis-Composition
Title: "no-basis-Composition"
Description: """Basisprofil for Norwegian Composition. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to the relevant use-case.

The profile sets the absolute minimum requirements, identifies the extensions and terminology which can be present."""
* ^version = "2.0.15"
* ^status = #active
* type from NoBasisDocumentReferenceType (required)
* type ^definition = "Specifies the particular kind of composition using the codes defined in the valueset 'NoBasisDocumentReferenceType'.\r\nSuch as:\r\n- A00-1 Epikriser og sammenfatninger\r\n- A01-2 Kriseplan\r\n- A02-2 Individuell plan\r\n- etc.\r\n\r\nSee valueset 'NoBasisDocumentReferenceType' in the Terminology section for more information on available types"