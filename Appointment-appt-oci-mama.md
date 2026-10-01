# D4. Agendamento da OCI, realizado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D4. Agendamento da OCI, realizado**

## Example Appointment: D4. Agendamento da OCI, realizado

Perfil: [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md)

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento`/AG-2026-004980

**status**: Fulfilled

**serviceType**: CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA

**supportingInformation**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

**start**: 2026-08-18 09:00:00-0300

**end**: 2026-08-18 09:30:00-0300

**basedOn**: [ServiceRequest OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA](ServiceRequest-sr-oci-mama.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md) | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "appt-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"]
  },
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento",
    "value" : "AG-2026-004980"
  }],
  "status" : "fulfilled",
  "serviceType" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0301010072",
      "display" : "CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA"
    }]
  }],
  "supportingInformation" : [{
    "reference" : "Organization/org-central-regulacao"
  }],
  "start" : "2026-08-18T09:00:00-03:00",
  "end" : "2026-08-18T09:30:00-03:00",
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-oci-mama"
  }],
  "participant" : [{
    "actor" : {
      "reference" : "Patient/paciente-maria"
    },
    "status" : "accepted"
  }]
}

```
