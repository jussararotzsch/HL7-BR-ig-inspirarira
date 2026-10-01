# C1. Pedido de ultrassonografia com informação insuficiente - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **C1. Pedido de ultrassonografia com informação insuficiente**

## Example ServiceRequest: C1. Pedido de ultrassonografia com informação insuficiente

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-2026-000301

**status**: Active

**intent**: Order

**category**: Diagnóstico por ultrasonografia

**priority**: Routine

**code**: Ultrassonografia de abdomen total

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-09-10 10:00:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**reasonCode**: Dor abdominal a esclarecer



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-usg-abdome",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-2026-000301"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0205",
      "display" : "Diagnóstico por ultrasonografia"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0205020046",
      "display" : "Ultrassonografia de abdomen total"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-09-10T10:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "reasonCode" : [{
    "text" : "Dor abdominal a esclarecer"
  }]
}

```
