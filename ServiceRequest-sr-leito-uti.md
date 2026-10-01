# F1b. Pedido de leito de UTI (transferência externa) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1b. Pedido de leito de UTI (transferência externa)**

## Example ServiceRequest: F1b. Pedido de leito de UTI (transferência externa)

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/solicitacao`/SOL-LEITO-2026-0091

**status**: Completed

**intent**: Order

**category**: Tratamentos clínicos (outras especialidades)

**priority**: Urgent

**code**: TRATAMENTO DE INSUFICIENCIA CARDIACA

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**encounter**: [Encounter: status = finished; class = inpatient encounter (ActCode#IMP); priority = Urgência; period = 2026-10-01 06:00:00-0300 --> 2026-10-01 15:40:00-0300](Encounter-enc-origem-enfermaria.md)

**authoredOn**: 2026-10-01 09:00:00-0300

**requester**: [Organization Hospital Exemplo](Organization-org-executante.md)

**locationCode**: UTI ADULTO - TIPO II

**reasonReference**: [Condition Insuficiência cardíaca congestiva](Condition-condicao-icc.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-leito-uti",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/solicitacao",
    "value" : "SOL-LEITO-2026-0091"
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0303",
      "display" : "Tratamentos clínicos (outras especialidades)"
    }]
  }],
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0303060212",
      "display" : "TRATAMENTO DE INSUFICIENCIA CARDIACA"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-joao"
  },
  "encounter" : {
    "reference" : "Encounter/enc-origem-enfermaria"
  },
  "authoredOn" : "2026-10-01T09:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-executante"
  },
  "locationCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
      "code" : "75",
      "display" : "UTI ADULTO - TIPO II"
    }]
  }],
  "reasonReference" : [{
    "reference" : "Condition/condicao-icc"
  }]
}

```
