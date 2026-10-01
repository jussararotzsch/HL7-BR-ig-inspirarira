# B5. Primeira sessão, realizada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B5. Primeira sessão, realizada**

## Example Appointment: B5. Primeira sessão, realizada

Perfil: [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/agendamento`/AG-HD-2026-0311

**status**: Fulfilled

**serviceType**: Hemodiálise (máximo 3 sessões por semana)

**supportingInformation**: 

* [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)
* [ClaimResponse: identifier = http://ses-exemplo.saude.sp.gov.br/fhir/sid/apac#3526100000001; status = active; type = Institutional; subType = apac; use = preauthorization; created = 2026-10-09 15:30:00-0300; outcome = complete; disposition = APAC autorizada; preAuthRef = 3526100000001; preAuthPeriod = 2026-10-13 --> 2027-01-12](ClaimResponse-claimresponse-apac-hemodialise.md)

**start**: 2026-10-13 07:00:00-0300

**end**: 2026-10-13 11:00:00-0300

**basedOn**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

### Participants

| | | |
| :--- | :--- | :--- |
| - | **Actor** | **Status** |
| * | [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md) | Accepted |



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "appt-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/agendamento",
    "value" : "AG-HD-2026-0311"
  }],
  "status" : "fulfilled",
  "serviceType" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0305010107",
      "display" : "Hemodiálise (máximo 3 sessões por semana)"
    }]
  }],
  "supportingInformation" : [{
    "reference" : "Organization/org-central-regulacao"
  },
  {
    "reference" : "ClaimResponse/claimresponse-apac-hemodialise"
  }],
  "start" : "2026-10-13T07:00:00-03:00",
  "end" : "2026-10-13T11:00:00-03:00",
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-hemodialise"
  }],
  "participant" : [{
    "actor" : {
      "reference" : "Patient/paciente-maria"
    },
    "status" : "accepted"
  }]
}

```
