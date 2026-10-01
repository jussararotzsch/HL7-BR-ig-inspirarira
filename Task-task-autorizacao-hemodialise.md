# B6. Autorização regulatória concluída - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B6. Autorização regulatória concluída**

## Example Task: B6. Autorização regulatória concluída

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa`/TR-2026-001540

**basedOn**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

**status**: Completed

**businessStatus**: autorizado

**intent**: order

**priority**: Urgent

**code**: autorizacao

**focus**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-10-08 09:05:00-0300

**lastModified**: 2026-10-09 15:30:00-0300

**requester**: [Organization Hospital Exemplo](Organization-org-executante.md)

**owner**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

> **output****type**: pertinencia**value**: pertinente

> **output****type**: cobertura**value**: coberto

> **output****type**: decisao**value**: aprovado

> **output****type**: autorizacao-administrativa**value**: [ClaimResponse: identifier = http://ses-exemplo.saude.sp.gov.br/fhir/sid/apac#3526100000001; status = active; type = Institutional; subType = apac; use = preauthorization; created = 2026-10-09 15:30:00-0300; outcome = complete; disposition = APAC autorizada; preAuthRef = 3526100000001; preAuthPeriod = 2026-10-13 --> 2027-01-12](ClaimResponse-claimresponse-apac-hemodialise.md)



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-autorizacao-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/tarefa",
    "value" : "TR-2026-001540"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-hemodialise"
  }],
  "status" : "completed",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "autorizado"
    }]
  },
  "intent" : "order",
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "autorizacao"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-hemodialise"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-10-08T09:05:00-03:00",
  "lastModified" : "2026-10-09T15:30:00-03:00",
  "requester" : {
    "reference" : "Organization/org-executante"
  },
  "owner" : {
    "reference" : "Organization/org-gestor-ses"
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
        "code" : "cobertura"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria",
        "code" : "coberto"
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
        "code" : "autorizacao-administrativa"
      }]
    },
    "valueReference" : {
      "reference" : "ClaimResponse/claimresponse-apac-hemodialise"
    }
  }]
}

```
