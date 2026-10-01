# B2. Arranjo público SUS (PPI) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B2. Arranjo público SUS (PPI)**

## Example Coverage: B2. Arranjo público SUS (PPI)

**status**: Active

**type**: Arranjo público SUS pactuado na PPI

**beneficiary**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**payor**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "coverage-sus-arranjo-publico",
  "status" : "active",
  "type" : {
    "text" : "Arranjo público SUS pactuado na PPI"
  },
  "beneficiary" : {
    "reference" : "Patient/paciente-maria"
  },
  "payor" : [{
    "reference" : "Organization/org-gestor-ses"
  }]
}

```
