# B1. Pedido de hemodiálise - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B1. Pedido de hemodiálise**

## Example ServiceRequest: B1. Pedido de hemodiálise

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/solicitacao`/SOL-2026-020045

**status**: Completed

**intent**: Order

**category**: Tratamento em nefrologia

**priority**: Urgent

**code**: Hemodiálise (máximo 3 sessões por semana)

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-10-07 16:00:00-0300

**requester**: [Organization Hospital Exemplo](Organization-org-executante.md)

**reasonReference**: [Condition Doença renal em estádio final](Condition-condicao-drc.md)

**supportingInfo**: [Condition Doença renal em estádio final](Condition-condicao-drc.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/solicitacao",
    "value" : "SOL-2026-020045"
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0305",
      "display" : "Tratamento em nefrologia"
    }]
  }],
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0305010107",
      "display" : "Hemodiálise (máximo 3 sessões por semana)"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-10-07T16:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-executante"
  },
  "reasonReference" : [{
    "reference" : "Condition/condicao-drc"
  }],
  "supportingInfo" : [{
    "reference" : "Condition/condicao-drc"
  }]
}

```
