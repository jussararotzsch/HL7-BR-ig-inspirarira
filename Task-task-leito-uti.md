# F1e. Regulação de leito concluída: paciente internado no destino - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1e. Regulação de leito concluída: paciente internado no destino**

## Example Task: F1e. Regulação de leito concluída: paciente internado no destino

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa`/TR-LEITO-2026-0091

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

**status**: Completed

**businessStatus**: internado

**intent**: order

**priority**: Urgent

**code**: regulacao-leito

**focus**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

**for**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**authoredOn**: 2026-10-01 09:05:00-0300

**lastModified**: 2026-10-01 16:15:00-0300

**requester**: [Organization Hospital Exemplo](Organization-org-executante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

> **output****type**: pertinencia**value**: pertinente

> **output****type**: destino**value**: aceito

> **output****type**: capacidade**value**: vaga-disponivel

> **output****type**: internacao**value**: [Encounter: status = in-progress; class = inpatient encounter (ActCode#IMP); priority = Urgência; period = 2026-10-01 16:10:00-0300 --> (em curso)](Encounter-enc-destino-uti.md)

> **output****type**: transporte**value**: [ServiceRequest ](ServiceRequest-transporte-uti.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-leito-uti",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa",
    "value" : "TR-LEITO-2026-0091"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-leito-uti"
  }],
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "internado"
    }]
  },
  "intent" : "order",
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "regulacao-leito"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-leito-uti"
  },
  "for" : {
    "reference" : "Patient/paciente-joao"
  },
  "authoredOn" : "2026-10-01T09:05:00-03:00",
  "lastModified" : "2026-10-01T16:15:00-03:00",
  "requester" : {
    "reference" : "Organization/org-executante"
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
        "code" : "pertinente"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "destino"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "aceito"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "capacidade"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "vaga-disponivel"
      }]
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSaidaTarefaRegulacao",
        "code" : "internacao"
      }]
    },
    "valueReference" : {
      "reference" : "Encounter/enc-destino-uti"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSaidaTarefaRegulacao",
        "code" : "transporte"
      }]
    },
    "valueReference" : {
      "reference" : "ServiceRequest/transporte-uti"
    }
  }]
}

```
