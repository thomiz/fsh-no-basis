Profile: NoBasisRelatedPerson
Parent: RelatedPerson
Id: no-basis-RelatedPerson
Title: "no-basis-RelatedPerson"
Description: """Basisprofil for Norwegian RelatedPerson information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.

Typical use-case for no-basis-RelatedPerson involves information about relations person-patient.
- Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)
- Other relationship information registered on a patient or person neccessary for patient treatment
- Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource"""
* ^version = "2.0.15"
* ^status = #active
* ^date = "2019-05-20"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this person. Should be at Fødselsnummer or D-nummer\r\n\r\nIdentifier for a person within a particular scope."
* identifier contains
    FNR 0..* and
    DNR 0..*
* identifier[FNR] ^short = "Norwegian FNR"
* identifier[FNR] ^definition = "Fødselsnummer for the patient. Fødselsnummer as one of the possible patient identifier, should at least be sent unless there is a reason not to. Reasons for not sending the Fødselsnummer include but are not limited to, research and apps without a contract for processing data.\r\n\r\nMultiple FNR can exist for a person. If several FNR is provided the time period that each identifier is valid should be provided. No information about period is required when only one FNR is provided."
* identifier[FNR].system 1..
* identifier[FNR].system = "urn:oid:2.16.578.1.12.4.1.4.1" (exactly)
* identifier[FNR].system ^short = "Identification of the Norwegian FNR"
* identifier[FNR].system ^definition = "Identifies that this is a Norwegian Fødselsnummer"
* identifier[FNR].value 1..
* identifier[FNR].value ^short = "The actual Fødselsnummer"
* identifier[FNR].value ^definition = "The Norwegian Fødselsnummer"
* identifier[FNR].value ^alias[0] = "Fødselsnummer"
* identifier[FNR].value ^example.label = "Fødselsnummer"
* identifier[FNR].value ^example.valueString = "15076500565"
* identifier[DNR] ^short = "The D-nummer of the patient"
* identifier[DNR] ^definition = "The D-nummer of the patient. (assigned by the norwegian Skatteetaten)"
* identifier[DNR].system 1..
* identifier[DNR].system = "urn:oid:2.16.578.1.12.4.1.4.2" (exactly)
* identifier[DNR].system ^short = "The identification of the D-nummer"
* identifier[DNR].system ^definition = "The identification of the Norwegian D-nummer"
* identifier[DNR].value 1..
* identifier[DNR].value ^short = "The actual D-nummer"
* identifier[DNR].value ^definition = "The actual Norwegian D-nummer"
* identifier[DNR].value ^alias[0] = "D-nummer"
* identifier[DNR].value ^example.label = "D-nummer"
* identifier[DNR].value ^example.valueString = "700199 50032"
* patient only Reference(Patient or NoBasisPatient)
* patient ^short = "The person this person is related to"
* patient ^definition = "no-basis: Can reference no-basis-Patient in addition to Patient resources. \r\nIf a person reference is needed the optional extension should be used.\r\n\r\nThe patient this person is related to."
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship ^definition = "no-basis: adds slice definitions for three relationship codings from the Norwegian Folkeregisteret.\r\nSome relationships are ordered (a person is a parent of a child but the child on the other hand is the child of a parent). Ordered relationships are always expressed from the RelatedPerson instance to the Patient/Person instance referenced in the RelatedPerson.patient element. This will usually be the EXACT OPPOSITE of the actual data recorded in FREG, as relationships in FREG is recorded with the view from the Person to the RelatedPersons.\r\n\r\nThe nature of the relationship between a patient and the related person."
* relationship contains
    maritalStatus 0..* and
    familyRelation 0..* and
    parental 0..*
* relationship[maritalStatus] from NoBasisMaritalStatus (required)
* relationship[maritalStatus] ^short = "marital status from Norwegian Person Index"
* relationship[maritalStatus] ^definition = "Sivilstand as registered in the norwegian Person Index (folkeregisteret). \r\n\r\n• uoppgitt (kode i DSF: 0)\r\n• ugift (kode i DSF: 1)\r\n• gift (kode i DSF: 2)\r\n• enkeEllerEnkemann (enke eller enkemann) (kode i DSF: 3)\r\n• skilt (kode i DSF: 4)\r\n• separert (kode i DSF: 5)\r\n• registrertPartner(registrert partner) (kode i DSF: 6)\r\n• separertPartner (separert partner) (kode i DSF: 7)\r\n• skiltPartner (skilt partner) (kode i DSF: 8)\r\n• gjenlevendePartner (gjenlevende partner) (kode i DSF: 9)"
* relationship[maritalStatus] ^alias[0] = "sivilstand"
* relationship[maritalStatus].coding.system = "http://hl7.no/fhir/CodeSystem/no-basis-marital-status" (exactly)
* relationship[familyRelation] from NoBasisFamilyRelation (required)
* relationship[familyRelation] ^short = "Family relationship from Norwegian Person Index"
* relationship[familyRelation] ^definition = "Family relationship from Norwegian Person Index. \r\nThis is the role of the RelatedPerson instance in a familyrelation to the Person/Patient instance(relatertPersonsRolle).\r\n\r\nmor\r\nfar\r\nmedmor\r\nbarn\r\nsøsken\r\nektefelleEllerPartner\r\ndødfødtBarn"
* relationship[familyRelation] ^alias[0] = "familierelasjon"
* relationship[familyRelation] ^alias[+] = "relatertPersonsRolle"
* relationship[familyRelation].coding.system = "http://hl7.no/fhir/CodeSystem/no-basis-family-relation" (exactly)
* relationship[parental] from NoBasisParentalResponsibility (required)
* relationship[parental] ^short = "Parental responsibility registered in Norwegian person index"
* relationship[parental] ^definition = "Parental responsibility registered in Norwegian person index.\r\n\r\nbarnet har krav på omsut og omtanke frå dei som har foreldreansvaret. Dei har rett og plikt til å ta avgjerder for barnet i personlege tilhøve innanfor dei grensene som §§ 31 til 33 set. Foreldreansvaret skal utøvast ut frå barnet sine interesser og behov. Dei som har foreldreansvaret, er skyldige til å gje barnet forsvarleg oppseding og forsyting. Dei skal syte for at barnet får utdanning etter evne og givnad\r\nInneholder hvem som evt. har foreldremyndighet for en umyndig person.\r\nforeldremyndighet = myndighet til å inneha og utøve et foreldreansvar\r\n\r\nKodeverdier i Registeret i Freg:\r\n- felles\r\n- mor\r\n- far\r\n- medmor\r\n- andre\r\n- ukjent\r\nI Registeret vil ansvaret bli vist som en to-veis relasjon vha. identifikatorer eller identifiserende informasjon.\r\nDe gjeldende relasjonene til personer/barnevernsnemnd o.l. vil i praksis opphøre når personen ikke lenger er underlagt foreldreansvar, men de vil ikke opphøre i Registeret.\r\nNår informasjonen er migrert fra DSF vil Registeret være oppdatert i takt med DSF."
* relationship[parental] ^alias[0] = "foreldreansvar"
* relationship[parental].coding.system = "http://hl7.no/fhir/CodeSystem/no-basis-parental-responsibility" (exactly)
* name only NoBasisHumanName
* address only NoBasisAddress
* address ^short = "Norwegian address"
* address ^definition = "http://hl7.no/fhir/StructureDefinition/no-basis-Address"