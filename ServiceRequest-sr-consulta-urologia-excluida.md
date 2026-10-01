# C3. Pedido retirado após revisão - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **C3. Pedido retirado após revisão**

## Example ServiceRequest: C3. Pedido retirado após revisão

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-2026-000288

**status**: Revoked

**intent**: Order

**category**: Consultas / Atendimentos / Acompanhamentos

**priority**: Routine

**code**: Consulta médica em atenção especializada

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-20 08:30:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**performerType**: Médico urologista

**reasonCode**: Rastreamento sem sintomas



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-consulta-urologia-excluida",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-2026-000288"
  }],
  "status" : "revoked",
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
  "authoredOn" : "2026-08-20T08:30:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "performerType" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCBO",
      "code" : "225285",
      "display" : "Médico urologista"
    }]
  },
  "reasonCode" : [{
    "text" : "Rastreamento sem sintomas"
  }]
}

```
