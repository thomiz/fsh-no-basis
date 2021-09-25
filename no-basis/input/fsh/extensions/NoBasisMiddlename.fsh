Extension: NoBasisMiddlename
Id: no-basis-middlename
Title: "no-basis-middlename"
Description: "The basis extension defines the Norwegian middlename wich is called \"mellomnavn\" and defined by Norwegian legislation (Lov om personnavn)."
* ^meta.versionId = "1"
* ^meta.lastUpdated = "2018-06-13T12:23:00.348+00:00"
* ^version = "2.0.6"
* ^date = "2019-09-23"
* ^publisher = "Direktoratet for e-helse"
* ^purpose = "Specific usage of middle name as a specific part of official name standard where name order is important"
* ^kind = #primitive-type
* ^context.type = #element
* ^context.expression = "HumanName"
* . ..1
* . ^short = "Defines a Norwegian middle name"
* . ^definition = "The basis extension defines the Norwegian middlename wich is called \"mellomnavn\" and defined by Norwegian legislation (Lov om personnavn)."
* . ^alias = "mellomnavn"
* value[x] only string
* value[x] ^short = "The middle name of a person"
* value[x] ^definition = "The middle name of a person.\r\nThe middlename should be a norwegian middlename as defined by norwegian legislation (Lov om personnavn)."
* value[x] ^alias = "mellomnavn"