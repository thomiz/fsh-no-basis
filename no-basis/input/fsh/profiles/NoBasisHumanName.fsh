Profile: NoBasisHumanName
Parent: HumanName
Id: no-basis-HumanName
Title: "no-basis-HumanName"
Description: "Basisprofil for Norwegian HumanName. Defined by The Norwegian Directorate of eHealth and HL7 Norway. The profile adds the concept of middlename and further explains of the use for the data-elements in a Norwegian context. The basis profile is open, but derived profiles should close down the information elements according to specification relevant to the use-case."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2018-06-13T12:22:47.269+00:00"
* ^version = "2.0.15"
* ^date = "2019-05-20"
* . ^short = "Norwegian human name"
* . ^definition = "Defines the format of norwegian human name according to norwegian legislation (lov om personnavn)."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NoBasisMiddlename named middlename 0..*
* extension[middlename] ^short = "Defines a middle name"
* extension[middlename] ^definition = "Defines a middle name as a specific extension as this is widely used in Norwegian names. The middlename is defined in norwegian legislation (lov om personnavn)."
* family ^definition = "Ref. \"lov om personnavn\" for further details about Norwegian HumanNames.\r\n\r\nThe part of a name that links to the genealogy. In some cultures (e.g. Eritrea) the family name of a son is the first name of his father."
* family ^alias = "etternavn"
* given ^short = "Given names (not always 'first')"
* given ^definition = "Given name. In Norway Given name does not include middlenames according to the regulation for norwegian names. Multiple given names are however legal. Ref. \"Lov om personnavn\" for further details about Norwegian HumanNames."
* given ^alias = "fornavn"
* prefix ^short = "Prefix is not used in Norwegian names"
* prefix ^definition = "This is not a part of official Norwegian names as defined in \"lov om personnavn\" regulation.\r\n\r\nPart of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the start of the name."
* prefix ^mustSupport = false
* suffix ^short = "Suffix is not used in Norwegian human names"
* suffix ^definition = "This is not a part of official Norwegian names as defined in \"lov om personnavn\" regulation.\r\n\r\nPart of the name that is acquired as a title due to academic, legal, employment or nobility status, etc. and that appears at the end of the name."
* suffix ^mustSupport = false