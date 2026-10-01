# C4. Negativa por ausência de indicação - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **C4. Negativa por ausência de indicação**

## Example Task: C4. Negativa por ausência de indicação

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**basedOn**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-urologia-excluida.md)

**status**: Rejected

**statusReason**: sem-indicacao-clinica

**businessStatus**: cancelado-clinicamente

**intent**: order

**code**: regulacao-acesso

**focus**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-urologia-excluida.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-20 08:35:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

> **output****type**: pertinencia**value**: nao-pertinente

> **output****type**: decisao**value**: negado



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-regulacao-urologia-negada",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-consulta-urologia-excluida"
  }],
  "status" : "rejected",
  "statusReason" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMotivoDecisaoRegulatoria",
      "code" : "sem-indicacao-clinica"
    }]
  },
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "cancelado-clinicamente"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "regulacao-acesso"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-consulta-urologia-excluida"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-08-20T08:35:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "output" : [{
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "pertinencia"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "nao-pertinente"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "decisao"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "negado"
      }]
    }
  }]
}

```
