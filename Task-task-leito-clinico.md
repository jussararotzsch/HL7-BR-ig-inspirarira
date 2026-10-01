# F2c. Leito reservado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F2c. Leito reservado**

## Example Task: F2c. Leito reservado

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**Data de Entrada na Fila**: 2026-10-01 10:05:00-0300

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-clinico.md)

**status**: In Progress

**businessStatus**: leito-reservado

**intent**: order

**code**: regulacao-leito

**focus**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-clinico.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-10-01 10:05:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

### Restrictions

| | |
| :--- | :--- |
| - | **Period** |
| * | ?? --> 2026-10-02 10:00:00-0300 |

### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | internacao | [Encounter: status = planned; class = inpatient encounter (ActCode#IMP); priority = Eletivo; period = 2026-10-02 08:00:00-0300 --> (em curso)](Encounter-enc-reserva-clinico.md) |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-leito-clinico",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "extension" : [{
    "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila",
    "valueDateTime" : "2026-10-01T10:05:00-03:00"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-leito-clinico"
  }],
  "status" : "in-progress",
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "leito-reservado"
    }]
  },
  "intent" : "order",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoTarefaRegulacao",
      "code" : "regulacao-leito"
    }]
  },
  "focus" : {
    "reference" : "ServiceRequest/sr-leito-clinico"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-10-01T10:05:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "restriction" : {
    "period" : {
      "end" : "2026-10-02T10:00:00-03:00"
    }
  },
  "output" : [{
    "type" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoSaidaTarefaRegulacao",
        "code" : "internacao"
      }]
    },
    "valueReference" : {
      "reference" : "Encounter/enc-reserva-clinico"
    }
  }]
}

```
