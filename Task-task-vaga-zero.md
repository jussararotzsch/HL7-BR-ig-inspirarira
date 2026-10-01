# F3b. Vaga zero - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F3b. Vaga zero**

## Example Task: F3b. Vaga zero

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-vaga-zero.md)

**status**: Completed

**statusReason**: risco-iminente

**businessStatus**: vaga-zero

**intent**: order

**priority**: STAT

**code**: regulacao-leito

**focus**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-vaga-zero.md)

**for**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**authoredOn**: 2026-09-20 02:12:00-0300

**requester**: [Organization UPA 24h Exemplo](Organization-org-upa.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

**note**: 

> 

Edema agudo de pulmão refratário, sem suporte ventilatório invasivo na UPA. Nenhum leito de UTI adulto disponível na região às 02h30. Encaminhado ao hospital de referência regional em vaga zero.


> **output****type**: capacidade**value**: indisponivel

> **output****type**: decisao**value**: aprovado

> **output****type**: estabelecimento-destino**value**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-vaga-zero",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-vaga-zero"
  }],
  "status" : "completed",
  "statusReason" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMotivoDecisaoRegulatoria",
      "code" : "risco-iminente"
    }]
  },
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "vaga-zero"
    }]
  },
  "intent" : "order",
  "priority" : "stat",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "regulacao-leito"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-vaga-zero"
  },
  "for" : {
    "reference" : "Patient/paciente-joao"
  },
  "authoredOn" : "2026-09-20T02:12:00-03:00",
  "requester" : {
    "reference" : "Organization/org-upa"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "note" : [{
    "text" : "Edema agudo de pulmão refratário, sem suporte ventilatório invasivo na UPA. Nenhum leito de UTI adulto disponível na região às 02h30. Encaminhado ao hospital de referência regional em vaga zero."
  }],
  "output" : [{
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "capacidade"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "indisponivel"
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
        "code" : "aprovado"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSaidaTarefaRegulacao",
        "code" : "estabelecimento-destino"
      }]
    },
    "valueReference" : {
      "reference" : "Organization/org-hospital-destino"
    }
  }]
}

```
