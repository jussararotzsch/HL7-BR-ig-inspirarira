# A4. Regulação do acesso concluída e executada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A4. Regulação do acesso concluída e executada**

## Example Task: A4. Regulação do acesso concluída e executada

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

> **Prioridade Regulatória**
* classe: Amarelo
* escore: 7.5
* fator: risco-espera
* fator: fragilidade

**Data de Entrada na Fila**: 2026-08-05 14:00:00-0300

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa`/TR-2026-000987

**instantiatesUri**: [http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-acesso-nefrologia|0.1.0](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-acesso-nefrologia|0.1.0)

**basedOn**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-nefrologia.md)

**status**: Completed

**businessStatus**: executado

**intent**: order

**code**: regulacao-acesso

**focus**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-nefrologia.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-03 09:15:00-0300

**lastModified**: 2026-09-15 10:40:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Period** |
| * | ?? --> 2026-10-31 |

> **output****type**: completude**value**: completo

> **output****type**: pertinencia**value**: pertinente

> **output****type**: capacidade**value**: vaga-disponivel

> **output****type**: agendamento**value**: [Appointment: identifier = http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento#AG-2026-005102; status = fulfilled; serviceType = Consulta médica em atenção especializada; specialty = Médico nefrologista; start = 2026-09-15 10:00:00-0300; end = 2026-09-15 10:30:00-0300](Appointment-appt-consulta-nefrologia.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-regulacao-consulta",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "classe",
      "valueCodeableConcept" : {
        "text" : "Amarelo"
      }
    },
    {
      "url" : "escore",
      "valueDecimal" : 7.5
    },
    {
      "url" : "fator",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRFatorPrioridadeRegulatoria",
          "code" : "risco-espera"
        }]
      }
    },
    {
      "url" : "fator",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRFatorPrioridadeRegulatoria",
          "code" : "fragilidade"
        }]
      }
    }],
    "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/prioridade-regulatoria"
  },
  {
    "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila",
    "valueDateTime" : "2026-08-05T14:00:00-03:00"
  }],
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa",
    "value" : "TR-2026-000987"
  }],
  "instantiatesUri" : "http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-acesso-nefrologia|0.1.0",
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-consulta-nefrologia"
  }],
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "executado"
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
    "reference" : "ServiceRequest/sr-consulta-nefrologia"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-08-03T09:15:00-03:00",
  "lastModified" : "2026-09-15T10:40:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "restriction" : {
    "period" : {
      "end" : "2026-10-31"
    }
  },
  "output" : [{
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria",
        "code" : "completude"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "completo"
      }]
    }
  },
  {
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
        "code" : "agendamento"
      }]
    },
    "valueReference" : {
      "reference" : "Appointment/appt-consulta-nefrologia"
    }
  }]
}

```
