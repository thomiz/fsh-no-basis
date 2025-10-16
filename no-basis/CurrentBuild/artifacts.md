# Artifacts Summary - v2.2.2-test

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [no-basis-middlename](SearchParameter-no-basis-middlename.md) | SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [derived-Person](StructureDefinition-derived-Person.md) | Derived person from no-basis-Person for Norwegian Person information. |
| [no-basis-AllergyIntolerance](StructureDefinition-no-basis-AllergyIntolerance.md) | Basis profile for allergy intolerance, to be used in Norway. The profile is adapted to support the norwegian standard for critical information (KI standard). |
| [no-basis-Appointment](StructureDefinition-no-basis-Appointment.md) | Base profile for Norwegian Appointment information. Defined by HL7 Norway. This profile identifies a set of minimum expectations for an Appointment resource when creating, searching and retrieving compositions by defining which coding system(s) can be present when using this profile. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |
| [no-basis-AppointmentResponse](StructureDefinition-no-basis-AppointmentResponse.md) | Basisprofil for Norwegian AppointmentResponse information. Defined by HL7 Norway. Should be used as a basis for further profiling in use-cases where specific appointment respons information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to each use-case. |
| [no-basis-Composition](StructureDefinition-no-basis-Composition.md) | Basisprofil for Norwegian Composition. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to the relevant use-case.The profile sets the absolute minimum requirements, identifies the extensions and terminology which can be present. |
| [no-basis-DocumentReference](StructureDefinition-no-basis-DocumentReference.md) | Basisprofil for Norwegian DocumentReference. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds terminology and extensions specific to Norway. The basis profile is open, derived profiles should close down the information elements according to specification relevant to the use-case.The profile sets the absolute minimum requirements when searching, fething and storing documents within the healtcare domain. It sets the basic requirements for extensions and terminology which can be present. |
| [no-basis-Endpoint](StructureDefinition-no-basis-Endpoint.md) | Basisprofil for Norwegian Endpoint information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Endpoing. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.Resource profile for definition of electronic endpoints used by healthcare organizations to communicate using different protocols. The norwegian profile use-case is to represent endpoints for electronic communication. Fallback solutions using mail or fax has to be indexed in the norwegian master index for healthcare organizations and are not described using this profile. |
| [no-basis-HealthcareService](StructureDefinition-no-basis-HealthcareService.md) | Basisprofil for Norwegian Healthcare Service information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific identification of Healthcare Services. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.The typical use-case is to include information regarding what Healthcare related services, support functions or activities provided by an Organization or awailable at a Location. |
| [no-basis-Location](StructureDefinition-no-basis-Location.md) | Basisprofil for Norwegian Location information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific location information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |
| [no-basis-Medication](StructureDefinition-no-basis-Medication.md) | Basis profile for medication to be used in Norway. The profile is adapted to use FEST as source of information. |
| [no-basis-MedicationStatement](StructureDefinition-no-basis-MedicationStatement.md) | Basis profile for medication statement, to be used in Norway. The profile is adapted to include norwegian specific features and constraints. |
| [no-basis-Organization](StructureDefinition-no-basis-Organization.md) | Basisprofil for Norwegian Organization information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The basis profile describes information structures typically used for identifying norwegian organizations. Should be used as a basis for further profiling in use-cases where other specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |
| [no-basis-Patient](StructureDefinition-no-basis-Patient.md) | Basisprofil for Norwegian Patient information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |
| [no-basis-Person](StructureDefinition-no-basis-Person.md) | Basisprofil for Norwegian Person information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.The no-basis-Person resource main use-case is with regards to information describing persons that are living in Norway. The information is typically available from the Norwegian "folkeregister" and contains information describing all Norweigan citizens and individuals working and living in Norway. |
| [no-basis-Practitioner](StructureDefinition-no-basis-Practitioner.md) | Basisprofil for Norwegian Practitioner information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.2019-03 - The no-basis-Practitioner resource main use-case is to represent the actual Practitioner, e.g. a person. The resource can include information about how to identify the practitioner in addition to the practitioner's education, qualifications and speciality. The resource can also include approvals and other centrally registered capabilities recorded for the practitioner. |
| [no-basis-PractitionerRole](StructureDefinition-no-basis-PractitionerRole.md) | Basisprofil for Norwegian PractitionerRole information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific role information is available. The basis profile is open, but derived profiles should close down the information elements according to specifications relevant to the use-case.The main use-case of no-basis-PractitionerRole is to represent the role or function of a Practitioner wihtin an organization. The resource can include information about services performed by a Practitioner, a location where the practitioner performes the functions as well as information about the nature of the employment at an organization. |
| [no-basis-Procedure](StructureDefinition-no-basis-Procedure.md) | Basis profile for a procedure, to be used in Norway. The profile is adapted to include norwegian specific features and constraints. |
| [no-basis-RelatedPerson](StructureDefinition-no-basis-RelatedPerson.md) | Basisprofil for Norwegian RelatedPerson information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. Should be used as a basis for further profiling in use-cases where specific identity information is needed. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case.Typical use-case for no-basis-RelatedPerson involves information about relations person-patient.* Relations registered in norwegian Master Person Information Index (aka Folkeregisteret)
* Other relationship information registered on a patient or person neccessary for patient treatment
* Should not be used for contact persons for the patient with a predefined role in the patient care, as information as this is registered separately in the Patient resource
 |
| [no-basis-Substance](StructureDefinition-no-basis-Substance.md) | Basis profile for Substances to be used in Norway. The profile is adapted to use FEST as source of information. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [no-basis-Address](StructureDefinition-no-basis-Address.md) | Basisprofil for Norwegian Address information. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds Norwegian specific property information, official use of address and further explanation of the use for the data-elements in a Norwegian address. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |
| [no-basis-HumanName](StructureDefinition-no-basis-HumanName.md) | Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [no-basis-address-official](StructureDefinition-no-basis-address-official.md) | Defines the concept of an officialy registered address in Norway. Usually this will be the adress registered in "Folkeregisteret" for persons or "Enhetsregisteret" for organizations. |
| [no-basis-group](StructureDefinition-no-basis-group.md) | The appointment is a group session. |
| [no-basis-middlename](StructureDefinition-no-basis-middlename.md) | The basis extension defines the Norwegian middlename wich is called "mellomnavn" and defined by Norwegian legislation (Lov om personnavn). |
| [no-basis-municipalitycode](StructureDefinition-no-basis-municipalitycode.md) | Coded value for municipality/county Norwegian kommune |
| [no-basis-partof](StructureDefinition-no-basis-partof.md) | This basis extension mirrors the Encounter.partOF-attribute. The partOf-attribute enables booking of a set of related appointments with a set of sub-appointments being linked to the main appointment in the same way as encounters are being linked. A larger appointment of which this particular appointment is a component or step. |
| [no-basis-person-citizenship](StructureDefinition-no-basis-person-citizenship.md) | The Person's legal status as citizen of a country. |
| [no-basis-prescriptiongroup](StructureDefinition-no-basis-prescriptiongroup.md) | Part of norwegian standard for describing a prescription. |
| [no-basis-propertyinformation](StructureDefinition-no-basis-propertyinformation.md) | This basis extension describes information identifying norwegian real property. |
| [no-basis-relatedperson-person-reference](StructureDefinition-no-basis-relatedperson-person-reference.md) | If a person reference is needed in RelatedPerson.patient element, this optional extension should be used. |
| [no-basis-shortnotice](StructureDefinition-no-basis-shortnotice.md) | The basis extension defines a boolean concept that expresses the possibility to meet on short notice if the there are available appointment slots. |
| [no-basis-sourceofinformation](StructureDefinition-no-basis-sourceofinformation.md) | Part of norwegian KI standard. |
| [no-basis-urban-district](StructureDefinition-no-basis-urban-district.md) | Simple extension containing information about what part of a norwegian city the patient is a resident. Administrative purpose. |
| [no-basis-virtual-service](StructureDefinition-no-basis-virtual-service.md) | The VirtualService is based on VirtualServiceDetail structure from R5 and defines details of a virtual communication capability, such as a web conference call. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [No Basis VirtualServiceType Value Set](ValueSet-no-basis-virtual-service-type.valueset.md) | Example codes for virtual service connection types. Any other codes or codesystem should be added to this valueSet |
| [no-basis-connection-type.valueset](ValueSet-no-basis-connection-type.valueset.md) | ValueSet for connection types used in Endpoint definition. Includes all Norwegian specific types (no-basis-connection-type) and the extensible HL7 CodeSystem for connection-type |
| [no-basis-documentreference-type.valueset](ValueSet-no-basis-documentreference-type.valueset.md) |  |
| [no-basis-family-relation.valueset](ValueSet-no-basis-family-relation.valueset.md) | Copy of Codes from Familierelasjon defined by Skatteetaten |
| [no-basis-marital-status.valueset](ValueSet-no-basis-marital-status.valueset.md) | Copy of Codes from Sivilstandstype defined by Skatteetaten |
| [no-basis-parental-responsibility.valueset](ValueSet-no-basis-parental-responsibility.valueset.md) | Copy of Codes from Foreldreansvar defined by Skatteetaten |
| [no-basis-service-type.valueset](ValueSet-no-basis-service-type.valueset.md) | ValueSet including all codes for service type (tjenestetype) allowed in the Adressergister |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [no-basis-connection-type.codesystem](CodeSystem-no-basis-connection-type.codesystem.md) | Codes to describe Norwegian message based communication protocols. |
| [no-basis-family-relation.codesystem](CodeSystem-no-basis-family-relation.codesystem.md) | Copy of Codes from Familierelasjon defined by Skatteetaten |
| [no-basis-marital-status.codesystem](CodeSystem-no-basis-marital-status.codesystem.md) | Copy of Codes from Sivilstandstype defined by Skatteetaten |
| [no-basis-parental-responsibility.codesystem](CodeSystem-no-basis-parental-responsibility.codesystem.md) | Copy of Codes from Foreldreansvar defined by Skatteetaten |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [NoBasisICPC2](NamingSystem-no-basis-icpc-2.md) | In Norway primary care uses ICPC-2 to document contact-reason, health related problem and diagnosis. |
| [no-basis-bydelsnummer](NamingSystem-no-basis-bydelsnummer.md) | Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. |
| [no-basis-dnummer](NamingSystem-no-basis-dnummer.md) | Personidentifikator for personer som ikke har fødselsnummer og som ikke skal registreres som bosatt i Norge. The D-nummer of the patient. (assigned by the norwegian Skatteetaten) |
| [no-basis-dufnummer](NamingSystem-no-basis-dufnummer.md) | Et DUF-nummer er et tolvsifret nummer som blir gitt til alle som søker om opphold i Norge. |
| [no-basis-felleshjelpenummer](NamingSystem-no-basis-felleshjelpenummer.md) | Felles hjelpenummer is one possible patient identification number administered by Norsk Helsenett. The norwegian felles hjelpenummer is a 11-digit number containing two control digits. The number shoud only be used when the Fødselsnummer and D-number is unknown. |
| [no-basis-foedselsnummer](NamingSystem-no-basis-foedselsnummer.md) | Fødselsnummer is the official identification of a Norwegian citizen and is registered in the repository called folkeregisteret. Fødselsnummer is a 11-digit number containing 2 control digits. |
| [no-basis-helsepersonellnummer](NamingSystem-no-basis-helsepersonellnummer.md) | In Norway all registered health care personnel is registered in the Helsepersonellregister (HPR) and is assigned a HPR-number that is used to identify the health care practitioner. Health care personnel not registered in HPR can use FNR for identification. |
| [no-basis-kommunenummer](NamingSystem-no-basis-kommunenummer.md) | Nummerering av kommuner i henhold til SSB sin offisielle liste. Inneholder fremtidige, gyldige og utgåtte kommunenummer. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AppointmentExample](Appointment-d6c523ec-b520-4221-a8d6-c1c58911ce7a.md) | Discussion on the results of your recent MRI |
| [Direktoratet-for-eHelse-Organization](Organization-Direktoratet-for-eHelse-Organization.md) |  |
| [EspenEksempel](Patient-EspenEksempel.md) |  |
| [JanniceSoreng](Patient-JanniceSoreng.md) |  |
| [JanniceSorengTo](Patient-JanniceSorengTo.md) |  |
| [Magnar-Komann-Practitioner](Practitioner-Magnar-Komann-Practitioner.md) |  |
| [PatientAppointmentResponseExample](AppointmentResponse-PatientAppointmentResponseExample.md) | Example of Patient response to an appointment using no-basis profile. The profile is identical to the basis profile axept there is a extension that can be used for patient to signal if the patient can come on short notice to an appointment. The example is similar to http://hl7.org/fhir/R4/appointmentresponse-example.json.html with adition for the extension. |
| [PatientExample](Patient-e70f0ba2-44d8-4f14-9c3a-ff4c6ead7473.md) |  |
| [Solid-Aresdoktor-RelatedPerson](RelatedPerson-Solid-Aresdoktor-RelatedPerson.md) |  |
| [Sorgard-Erlend-RelatedPerson](RelatedPerson-Sorgard-Erlend-RelatedPerson.md) |  |
| [no-basis-HealthcareService-example](HealthcareService-no-basis-HealthcareService-example.md) |  |
| [no-basis-Procedure-example](Procedure-no-basis-Procedure-example.md) |  |

