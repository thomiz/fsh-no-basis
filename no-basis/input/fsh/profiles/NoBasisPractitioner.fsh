Profile: NoBasisPractitioner
Parent: Practitioner
Id: no-basis-Practitioner
Title: "no-basis-Practitioner"
Description: """Basisprofil for Norwegian Practitioner information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.

2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner."""
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2018-06-06T06:11:16.19+00:00"
* ^version = "2.0.17"
* ^status = #active
* ^date = "2019-05-20"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier that applies to this person in this role.\r\n\r\nIn Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification."
* identifier contains
    HPR 0..* and
    FNR 0..* and
    DNR 0..*
* identifier[HPR] ^short = "HPR number"
* identifier[HPR] ^definition = "In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification.\r\n\r\nThe norwegian helsepersonellnummer for the practitioner. HPR as one of the possible practitioner identification numbers, should at least be sent unless there is a reason not to. Reasons for not sending the HPR number include but are not limited to, research and apps without a contract for processing data."
* identifier[HPR].system 1..
* identifier[HPR].system = "urn:oid:2.16.578.1.12.4.1.4.4" (exactly)
* identifier[HPR].system ^short = "The identifier for HPR number"
* identifier[HPR].system ^definition = "The identifier for HPR number"
* identifier[HPR].value 1..
* identifier[HPR].value ^short = "The acttual HPR-number"
* identifier[HPR].value ^definition = "The acttual HPR-number"
* identifier[FNR] ^short = "Norwegian FNR"
* identifier[FNR] ^definition = "Fødselsnummer for the practitioner. Fødselsnummer as one of the possible practitioner identification numbers. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data."
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* identifier[FNR].system ^short = "The identification of FNR"
* identifier[FNR].system ^definition = "The identification of FNR"
* identifier[FNR].value 1..
* identifier[FNR].value ^short = "The actual FNR"
* identifier[DNR] ^short = "The D-nummer of the practitioner"
* identifier[DNR] ^definition = "The D-nummer of the practitioner. (assigned by the norwegian Skatteetaten)"
* identifier[DNR].system 1..
* identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* identifier[DNR].system ^short = "The identification of the D-nummer"
* identifier[DNR].system ^definition = "The identification of the Norwegian D-nummer"
* identifier[DNR].value 1..
* identifier[DNR].value ^short = "The actual D-nummer"
* identifier[DNR].value ^definition = "The actual Norwegian D-nummer"
* name only NoBasisHumanName
* address only NoBasisAddress
* address ^short = "Norwegian address"
* address ^definition = "http://hl7.no/fhir/StructureDefinition/no-basis-Address\r\n\r\nAddress(es) of the practitioner that are not role specific (typically home address). \rWork addresses are not typically entered in this property as they are usually role dependent."
* qualification ^definition = "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
* qualification.code ^definition = "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
* qualification.code.coding ^slicing.discriminator.type = #value
* qualification.code.coding ^slicing.discriminator.path = "system"
* qualification.code.coding ^slicing.rules = #open
* qualification.code.coding ^short = "Coded representation of the qualification"
* qualification.code.coding ^definition = "Coded representation of the qualification of the health care practitioner. Usually contains healthPersonnellCategory according to Kategori helsepersonell (OID=9060) and approvalType according to Godkjenningstype HPR (OID=7704)"
* qualification.code.coding contains
    healthPersonnellCategory 0..* and
    approvalType 0..* and
    healthPersonnelSpecialization 0..*
* qualification.code.coding[healthPersonnellCategory] from urn:oid:2.16.578.1.12.4.1.1.9060 (preferred)
* qualification.code.coding[healthPersonnellCategory] ^sliceName = "healthPersonnellCategory"
* qualification.code.coding[healthPersonnellCategory] ^short = "The health care personnel category"
* qualification.code.coding[healthPersonnellCategory] ^definition = "Category of health care personnel authorization according to Helsepersonnelloven §48"
* qualification.code.coding[healthPersonnellCategory].system 1..
* qualification.code.coding[healthPersonnellCategory].system = "urn:oid:2.16.578.1.12.4.1.1.9060" (exactly)
* qualification.code.coding[healthPersonnellCategory].system ^short = "Identification of the CodeSystem 9060 on Volven"
* qualification.code.coding[healthPersonnellCategory].system ^definition = "Identification of the CodeSystem Kategori helsepersonell (OID=9060) used to describe the category of authorized health care personnel"
* qualification.code.coding[healthPersonnellCategory].code 1..
* qualification.code.coding[approvalType] from urn:oid:2.16.578.1.12.4.1.1.7704 (preferred)
* qualification.code.coding[approvalType] ^sliceName = "approvalType"
* qualification.code.coding[approvalType] ^short = "The approval type of the practitioner"
* qualification.code.coding[approvalType] ^definition = "The approval type of the practitioner (if applicable) according to the CodeSystem Godkjenningstype HPR (OID=7704)"
* qualification.code.coding[approvalType].system 1..
* qualification.code.coding[approvalType].system = "urn:oid:2.16.578.1.12.4.1.1.7704" (exactly)
* qualification.code.coding[approvalType].system ^short = "Identification of the CodeSystem 7704 on Volven"
* qualification.code.coding[approvalType].system ^definition = "Identification of the CodeSystem Godkjenningstype HPR (OID=7704) used to describe type of autohorization registered in HPR."
* qualification.code.coding[approvalType].code 1..
* qualification.code.coding[healthPersonnelSpecialization] from urn:oid:2.16.578.1.12.4.1.1.7426 (preferred)
* qualification.code.coding[healthPersonnelSpecialization] ^sliceName = "healthPersonnelSpecialization"
* qualification.code.coding[healthPersonnelSpecialization] ^short = "Godkjent spesialitet for helsepersonell registrert i HPR."
* qualification.code.coding[healthPersonnelSpecialization] ^definition = "Godkjent spesialitet for helsepersonell registrert i HPR. Helsepersonellregisterets (HPR) klassifikasjon av spesialiteter (OID=7426)"
* qualification.code.coding[healthPersonnelSpecialization].system 1..
* qualification.code.coding[healthPersonnelSpecialization].system = "urn:oid:2.16.578.1.12.4.1.1.7426" (exactly)
* qualification.code.coding[healthPersonnelSpecialization].code 1..