# Introduction  

|Version|2.0.17-alpha|
|-|-|
|Publish date|2019-06-27|
|IG namespace|http://hl7.no/fhir/ImplementationGuide/no-basis-ImplementationGuide-v2015 |
|Latest package definition|https://simplifier.net/packages/hl7.fhir.no.basis/2.0.17-alpha |
|Last bugfix|2021-06-21|

The Norwegian basisprofiles are developed by HL7 Norway and The Norwegian Directorate of eHealth in cooperation with the industry. The profiles are use-case independent and have several purposes:

* Can be used directly in use cases where the use-case don't need additional information or restrictions
* Can be used as a basis for further profiling in use-cases where additional specification of the content is needed (national profiles). In this case the basis profiles should be used as a base for national profiles developed by the user
* Can be used as inspiration for use-case specific profiling

The basis profiles are open, in effect it does not add any restrictions to the information content beyond what is necessary to apply FHIR resources in Norwegian context. The basis profiles typically profiles necessary identifiers and coding used in Norway.  

The model under visualizes the role of Norwegian base profiles. On top are the FHIR resources as defined by HL7 International. 
The Norwegian base profiles describes the minimum restrictions necessary independent of use-case to use a given FHIR resource in Norway.  
The national profiles specifies further any reuseable patterns within a given use-case. This can for example be what information elements in Patient should be supported when exchanging patient data, or how Medication.dosage should be descried in an integration between an EHR and a charting system. The level of implemented profiles represents the actual interface implemented in a given clinial application.  

<a href="https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/profilering-hierarki.PNG">
<img src="https://raw.githubusercontent.com/HL7Norway/basisprofiler-r4/master/Images/profilering-hierarki.PNG" alt="Drawing" style="width: 100%;max-width: 1200px"/></a>