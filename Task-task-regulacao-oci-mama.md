# D5. Regulação da OCI, com prazo alvo do protocolo - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D5. Regulação da OCI, com prazo alvo do protocolo**

## Example Task: D5. Regulação da OCI, com prazo alvo do protocolo

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**instantiatesUri**: [http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama|0.1.0](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama|0.1.0)

**basedOn**: [ServiceRequest OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA](ServiceRequest-sr-oci-mama.md)

**status**: Completed

**businessStatus**: executado

**intent**: order

**priority**: Urgent

**code**: regulacao-acesso

**focus**: [ServiceRequest OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA](ServiceRequest-sr-oci-mama.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-11 09:05:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Period** |
| * | ?? --> 2026-09-17 |

> **output****type**: pertinencia**value**: pertinente

> **output****type**: agendamento**value**: [Appointment: identifier = http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento#AG-2026-004980; status = fulfilled; serviceType = CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA; start = 2026-08-18 09:00:00-0300; end = 2026-08-18 09:30:00-0300](Appointment-appt-oci-mama.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-regulacao-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "instantiatesUri" : "http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama|0.1.0",
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-oci-mama"
  }],
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "executado"
    }]
  },
  "intent" : "order",
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "regulacao-acesso"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-oci-mama"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-08-11T09:05:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "restriction" : {
    "period" : {
      "end" : "2026-09-17"
    }
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
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSaidaTarefaRegulacao",
        "code" : "agendamento"
      }]
    },
    "valueReference" : {
      "reference" : "Appointment/appt-oci-mama"
    }
  }]
}

```
