Instance: no-basis-middlename
InstanceOf: SearchParameter
Usage: #definition
* url = "http://hl7.no/fhir/SearchParameter/no-basis-middlename"
* version = "2.0.14"
* name = "NoBasisMiddlename"
* status = #active
* description = "SearchParameter for the Norwegian middlename extension http://hl7.no/fhir/StructureDefinition/no-basis-middlename"
* code = #middlename
* base[0] = #Patient
* base[+] = #Practitioner
* base[+] = #Person
* type = #string
* expression = "Patient.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Practitioner.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value | Person.name.extension.where(url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename').value"
* xpath = "f:Patient/f:name/f:extension[@url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename'] | f:Practitioner/f:name/f:extension[@url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename'] | f:Person/f:name/f:extension[@url='http://hl7.no/fhir/StructureDefinition/no-basis-middlename']"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
* modifier[0] = #missing
* modifier[+] = #exact
* modifier[+] = #contains