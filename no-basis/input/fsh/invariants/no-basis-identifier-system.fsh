Invariant: no-basis-identifier-system
Description: "no-basis recommends the use of urn:oid:2.16.578.1.12.4.1.4.101 (ENH) or urn:oid:2.16.578.1.12.4.1.4.102 (RESH) for identifier.system"
Severity: #warning
Expression: "$this.exists(value = 'urn:oid:2.16.578.1.12.4.1.4.101' or value = 'urn:oid:2.16.578.1.12.4.1.4.102')"