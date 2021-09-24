Invariant: no-basis-providedBy-identifier
Description: "no-basis recommends the use of logical references by ENH or RESH identifiers. If providedBy exists, identifiers should exist."
Severity: #warning
Expression: "$this.exists(identifier.exists())"