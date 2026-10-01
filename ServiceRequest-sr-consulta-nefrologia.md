# A1. Pedido de consulta em nefrologia - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A1. Pedido de consulta em nefrologia**

## Example ServiceRequest: A1. Pedido de consulta em nefrologia

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-2026-000123

**status**: Active

**intent**: Order

**category**: Consultas / Atendimentos / Acompanhamentos

**priority**: Routine

**code**: Consulta médica em atenção especializada

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-03 09:10:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**performerType**: Médico nefrologista

**reasonReference**: [Condition Doença renal em estádio final](Condition-condicao-drc.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-consulta-nefrologia",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-2026-000123"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0301",
      "display" : "Consultas / Atendimentos / Acompanhamentos"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0301010072",
      "display" : "Consulta médica em atenção especializada"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-08-03T09:10:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225109",
      "display" : "Médico nefrologista"
    }]
  },
  "reasonReference" : [{
    "reference" : "Condition/condicao-drc"
  }]
}

```
