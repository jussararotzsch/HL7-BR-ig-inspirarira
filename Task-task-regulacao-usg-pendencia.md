# C2. Devolução por pendência documental - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **C2. Devolução por pendência documental**

## Example Task: C2. Devolução por pendência documental

Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)

**basedOn**: [ServiceRequest Ultrassonografia de abdomen total](ServiceRequest-sr-usg-abdome.md)

**status**: On Hold

**statusReason**: informacao-clinica-insuficiente

**businessStatus**: pendencia-documental

**intent**: order

**code**: regulacao-acesso

**focus**: [ServiceRequest Ultrassonografia de abdomen total](ServiceRequest-sr-usg-abdome.md)

**for**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-09-10 10:05:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**owner**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

**note**: 

> 

Informar tempo de evolução, achados do exame físico e exames laboratoriais prévios.


### Outputs

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | completude | incompleto |



## Resource Content

```json
{
  "resourceType" : "Task",
  "id" : "task-regulacao-usg-pendencia",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-usg-abdome"
  }],
  "status" : "on-hold",
  "statusReason" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMotivoDecisaoRegulatoria",
      "code" : "informacao-clinica-insuficiente"
    }]
  },
  "businessStatus" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSituacaoRegulatoria",
      "code" : "pendencia-documental"
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
    "reference" : "ServiceRequest/sr-usg-abdome"
  },
  "for" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-09-10T10:05:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "owner" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "note" : [{
    "text" : "Informar tempo de evolução, achados do exame físico e exames laboratoriais prévios."
  }],
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
        "code" : "incompleto"
      }]
    }
  }]
}

```
