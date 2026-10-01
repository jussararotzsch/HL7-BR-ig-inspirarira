# F3a. Pedido de leito de UTI a partir da UPA - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F3a. Pedido de leito de UTI a partir da UPA**

## Example ServiceRequest: F3a. Pedido de leito de UTI a partir da UPA

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://upa-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-UPA-2026-1180

**status**: Active

**intent**: Order

**category**: Tratamentos clínicos (outras especialidades)

**priority**: STAT

**code**: TRATAMENTO DE INSUFICIENCIA CARDIACA

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**authoredOn**: 2026-09-20 02:10:00-0300

**requester**: [Organization UPA 24h Exemplo](Organization-org-upa.md)

**locationCode**: UTI ADULTO - TIPO II

**reasonReference**: [Condition Insuficiência cardíaca congestiva](Condition-condicao-icc.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-vaga-zero",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://upa-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-UPA-2026-1180"
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
  "priority" : "stat",
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
  "authoredOn" : "2026-09-20T02:10:00-03:00",
  "requester" : {
    "reference" : "Organization/org-upa"
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
