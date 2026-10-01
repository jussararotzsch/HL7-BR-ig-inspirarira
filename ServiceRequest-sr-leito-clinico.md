# F2a. Pedido de leito clínico - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F2a. Pedido de leito clínico**

## Example ServiceRequest: F2a. Pedido de leito clínico

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-LEITO-2026-0102

**status**: Active

**intent**: Order

**category**: Tratamentos clínicos (outras especialidades)

**priority**: Routine

**code**: TRATAMENTO DE INSUFICIENCIA CARDIACA

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-10-01 10:00:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**locationCode**: CLINICA GERAL

**reasonCode**: Insuficiência cardíaca congestiva



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-leito-clinico",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-LEITO-2026-0102"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0303",
      "display" : "Tratamentos clínicos (outras especialidades)"
    }]
  }],
  "priority" : "routine",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0303060212",
      "display" : "TRATAMENTO DE INSUFICIENCIA CARDIACA"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-10-01T10:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "locationCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
      "code" : "33",
      "display" : "CLINICA GERAL"
    }]
  }],
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "I50.0",
      "display" : "Insuficiência cardíaca congestiva"
    }]
  }]
}

```
