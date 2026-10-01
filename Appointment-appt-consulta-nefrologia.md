# A3. Reagendamento, realizado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A3. Reagendamento, realizado**

## Example Appointment: A3. Reagendamento, realizado

Perfil: [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md)

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento`/AG-2026-005102

**status**: Fulfilled

**serviceType**: Consulta médica em atenção especializada

**specialty**: Médico nefrologista

**supportingInformation**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

**start**: 2026-09-15 10:00:00-0300

**end**: 2026-09-15 10:30:00-0300

**basedOn**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-nefrologia.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md) | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "appt-consulta-nefrologia",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"]
  },
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento",
    "value" : "AG-2026-005102"
  }],
  "status" : "fulfilled",
  "serviceType" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0301010072",
      "display" : "Consulta médica em atenção especializada"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225109",
      "display" : "Médico nefrologista"
    }]
  }],
  "supportingInformation" : [{
    "reference" : "Organization/org-central-regulacao"
  }],
  "start" : "2026-09-15T10:00:00-03:00",
  "end" : "2026-09-15T10:30:00-03:00",
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-consulta-nefrologia"
  }],
  "participant" : [{
    "actor" : {
      "reference" : "Patient/paciente-maria"
    },
    "status" : "accepted"
  }]
}

```
