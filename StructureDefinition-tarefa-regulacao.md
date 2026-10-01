# Tarefa de Regulação Assistencial - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tarefa de Regulação Assistencial**

## Resource Profile: Tarefa de Regulação Assistencial ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:TarefaRegulacao |

 
Etapa de trabalho regulatório sobre uma Requisição de Regulação: regulação do acesso (qualificação, priorização, alocação e agendamento), autorização regulatória, reavaliação, recurso e contrarreferência. É onde a decisão regulatória acontece, com dimensão, resultado, motivo, responsável e protocolo. Substitui os slices de Composition.event do RIRA. 

**Usos:**

* Refere a este Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [Task/task-autorizacao-hemodialise](Task-task-autorizacao-hemodialise.md), [Task/task-leito-clinico](Task-task-leito-clinico.md), [Task/task-leito-uti](Task-task-leito-uti.md), [Task/task-regulacao-consulta](Task-task-regulacao-consulta.md)... Show 4 more, [Task/task-regulacao-oci-mama](Task-task-regulacao-oci-mama.md), [Task/task-regulacao-urologia-negada](Task-task-regulacao-urologia-negada.md), [Task/task-regulacao-usg-pendencia](Task-task-regulacao-usg-pendencia.md) and [Task/task-vaga-zero](Task-task-vaga-zero.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-tarefa-regulacao.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-tarefa-regulacao.csv), [Excel](StructureDefinition-tarefa-regulacao.xlsx), [Schematron](StructureDefinition-tarefa-regulacao.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "tarefa-regulacao",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao",
  "version" : "0.1.0",
  "name" : "TarefaRegulacao",
  "title" : "Tarefa de Regulação Assistencial",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T16:52:20-03:00",
  "publisher" : "Hospital Sírio-Libanês",
  "contact" : [{
    "name" : "Hospital Sírio-Libanês",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hospitalsiriolibanes.org.br"
    }]
  }],
  "description" : "Etapa de trabalho regulatório sobre uma Requisição de Regulação: regulação do acesso (qualificação, priorização, alocação e agendamento), autorização regulatória, reavaliação, recurso e contrarreferência. É onde a decisão regulatória acontece, com dimensão, resultado, motivo, responsável e protocolo. Substitui os slices de Composition.event do RIRA.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task",
      "short" : "Tarefa de Regulação Assistencial",
      "definition" : "Etapa de trabalho regulatório sobre uma Requisição de Regulação: regulação do acesso (qualificação, priorização, alocação e agendamento), autorização regulatória, reavaliação, recurso e contrarreferência. É onde a decisão regulatória acontece, com dimensão, resultado, motivo, responsável e protocolo. Substitui os slices de Composition.event do RIRA.",
      "constraint" : [{
        "key" : "tr-1",
        "severity" : "error",
        "human" : "Tarefa rejeitada DEVE informar o motivo (statusReason) e ao menos uma dimensão avaliada (output). Negativa sem motivo computável não permite recurso nem análise de equidade.",
        "expression" : "status = 'rejected' implies (statusReason.exists() and output.exists())",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
      },
      {
        "key" : "tr-2",
        "severity" : "error",
        "human" : "Tarefa com situação 'agendado' DEVE apontar o Appointment em output.",
        "expression" : "businessStatus.coding.where(code = 'agendado').exists() implies output.value.ofType(Reference).where(reference.startsWith('Appointment/')).exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
      },
      {
        "key" : "tr-3",
        "severity" : "error",
        "human" : "Tarefa de autorização concluída ou rejeitada DEVE registrar a decisão em output (type = decisao).",
        "expression" : "(code.coding.where(code = 'autorizacao').exists() and (status = 'completed' or status = 'rejected')) implies output.where(type.coding.where(code = 'decisao').exists()).exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
      },
      {
        "key" : "tr-4",
        "severity" : "error",
        "human" : "Vaga zero DEVE ter motivo (statusReason) e justificativa em note.",
        "expression" : "businessStatus.coding.where(code = 'vaga-zero').exists() implies (statusReason.exists() and note.exists())",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
      },
      {
        "key" : "tr-5",
        "severity" : "error",
        "human" : "Tarefa com leito reservado DEVE apontar a InternacaoRegulada em output.",
        "expression" : "businessStatus.coding.where(code = 'leito-reservado').exists() implies output.value.ofType(Reference).where(reference.startsWith('Encounter/')).exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
      }]
    },
    {
      "id" : "Task.id",
      "path" : "Task.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Task.meta",
      "path" : "Task.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "Task.implicitRules",
      "path" : "Task.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "Task.language",
      "path" : "Task.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "Task.text",
      "path" : "Task.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "Task.contained",
      "path" : "Task.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "Task.extension",
      "path" : "Task.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Task.extension:prioridadeRegulatoria",
      "path" : "Task.extension",
      "sliceName" : "prioridadeRegulatoria",
      "short" : "Prioridade Regulatória",
      "definition" : "Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/prioridade-regulatoria"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.extension:dataEntradaFila",
      "path" : "Task.extension",
      "sliceName" : "dataEntradaFila",
      "short" : "Data de Entrada na Fila",
      "definition" : "Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.modifierExtension",
      "path" : "Task.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Task.identifier",
      "path" : "Task.identifier",
      "short" : "Identificador da tarefa",
      "definition" : "Identificador de negócio da tarefa.",
      "mustSupport" : true
    },
    {
      "id" : "Task.instantiatesCanonical",
      "path" : "Task.instantiatesCanonical",
      "short" : "Protocolo aplicado",
      "definition" : "Definição formal (PlanDefinition, ActivityDefinition) que a tarefa executa."
    },
    {
      "id" : "Task.instantiatesUri",
      "path" : "Task.instantiatesUri",
      "short" : "Protocolo externo aplicado",
      "definition" : "URL de protocolo externo que a tarefa executa.",
      "comment" : "DEVE usar url|versao exatos do protocolo aplicado na decisão, para auditoria. Em R4, Task.instantiatesCanonical só aceita ActivityDefinition; por isso o PlanDefinition vai em instantiatesUri.",
      "mustSupport" : true
    },
    {
      "id" : "Task.basedOn",
      "path" : "Task.basedOn",
      "short" : "Requisição de origem",
      "definition" : "Requisição que a tarefa ajuda a cumprir.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.groupIdentifier",
      "path" : "Task.groupIdentifier",
      "short" : "Identificador do grupo de tarefas",
      "definition" : "Identificador comum a tarefas criadas juntas."
    },
    {
      "id" : "Task.partOf",
      "path" : "Task.partOf",
      "short" : "Tarefa principal",
      "definition" : "Tarefa da qual esta é uma etapa.",
      "comment" : "Encadeia etapas (ex.: recurso sobre uma negativa, reavaliação após mudança clínica) sem perder o histórico.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "short" : "Situação da tarefa",
      "definition" : "Situação no ciclo de trabalho: requested, received, accepted, rejected, ready, in-progress, on-hold, failed, completed, cancelled.",
      "comment" : "Ciclo de trabalho da etapa: requested, received, accepted, rejected, ready, in-progress, on-hold, failed, completed, cancelled. Ver quadro em fluxo.html.",
      "mustSupport" : true
    },
    {
      "id" : "Task.statusReason",
      "path" : "Task.statusReason",
      "short" : "Motivo da situação",
      "definition" : "Motivo da situação atual, como negativa ou pendência.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRMotivoDecisaoRegulatoria"
      }
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "short" : "Situação de negócio",
      "definition" : "Situação específica do processo de negócio.",
      "comment" : "Situação regulatória de negócio. É aqui, e não em ServiceRequest.status, que ficam fila, pendência, autorização e agendamento.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRSituacaoRegulatoria"
      }
    },
    {
      "id" : "Task.intent",
      "path" : "Task.intent",
      "short" : "Intenção",
      "definition" : "Natureza da tarefa: proposta, plano ou ordem.",
      "patternCode" : "order"
    },
    {
      "id" : "Task.priority",
      "path" : "Task.priority",
      "short" : "Prioridade",
      "definition" : "Urgência da tarefa.",
      "comment" : "Urgência operacional da etapa. A classe clínica de prioridade, o escore e os fatores ficam na extensão prioridadeRegulatoria.",
      "mustSupport" : true
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "short" : "Tipo de tarefa",
      "definition" : "Código que identifica o tipo de tarefa.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoTarefaRegulacao"
      }
    },
    {
      "id" : "Task.description",
      "path" : "Task.description",
      "short" : "Descrição",
      "definition" : "Descrição em texto livre do que deve ser feito."
    },
    {
      "id" : "Task.focus",
      "path" : "Task.focus",
      "short" : "Recurso sobre o qual a tarefa age",
      "definition" : "Recurso que a tarefa avalia ou modifica.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/transporte-sanitario"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "short" : "Beneficiário",
      "definition" : "Paciente em favor de quem a tarefa é executada.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.encounter",
      "path" : "Task.encounter",
      "short" : "Atendimento relacionado",
      "definition" : "Atendimento durante o qual a tarefa foi criada."
    },
    {
      "id" : "Task.executionPeriod",
      "path" : "Task.executionPeriod",
      "short" : "Período de execução",
      "definition" : "Início e fim da execução."
    },
    {
      "id" : "Task.authoredOn",
      "path" : "Task.authoredOn",
      "short" : "Data de criação",
      "definition" : "Data e hora de criação da tarefa.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Task.lastModified",
      "path" : "Task.lastModified",
      "short" : "Data da última alteração",
      "definition" : "Data e hora da última modificação.",
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "short" : "Solicitante",
      "definition" : "Quem criou a tarefa.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.performerType",
      "path" : "Task.performerType",
      "short" : "Tipo de executante",
      "definition" : "Tipo de profissional ou entidade que deve executar."
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "short" : "Unidade ou profissional responsável pela etapa (ex.: complexo regulador)",
      "definition" : "Quem é responsável pela execução.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "short" : "Local de execução",
      "definition" : "Onde a tarefa deve ser executada."
    },
    {
      "id" : "Task.reasonCode",
      "path" : "Task.reasonCode",
      "short" : "Motivo (código)",
      "definition" : "Por que a tarefa é necessária.",
      "mustSupport" : true
    },
    {
      "id" : "Task.reasonReference",
      "path" : "Task.reasonReference",
      "short" : "Motivo (referência)",
      "definition" : "Recurso que justifica a tarefa."
    },
    {
      "id" : "Task.insurance",
      "path" : "Task.insurance",
      "short" : "Cobertura associada",
      "definition" : "Coberturas relevantes para a tarefa."
    },
    {
      "id" : "Task.note",
      "path" : "Task.note",
      "short" : "Observações",
      "definition" : "Comentários sobre a tarefa.",
      "mustSupport" : true
    },
    {
      "id" : "Task.relevantHistory",
      "path" : "Task.relevantHistory",
      "short" : "Histórico (Provenance)",
      "definition" : "Registros de proveniência das mudanças da tarefa.",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction",
      "path" : "Task.restriction",
      "short" : "Restrições de execução",
      "definition" : "Limites de prazo, repetições e destinatários.",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.id",
      "path" : "Task.restriction.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Task.restriction.extension",
      "path" : "Task.restriction.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Task.restriction.modifierExtension",
      "path" : "Task.restriction.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Task.restriction.repetitions",
      "path" : "Task.restriction.repetitions",
      "short" : "Número de repetições",
      "definition" : "Quantas vezes a tarefa deve ser executada."
    },
    {
      "id" : "Task.restriction.period",
      "path" : "Task.restriction.period",
      "short" : "Prazo alvo",
      "definition" : "Período em que a tarefa deve ser concluída.",
      "comment" : "Prazo alvo definido pela priorização. Elemento nativo; dispensa extensão.",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.recipient",
      "path" : "Task.restriction.recipient",
      "short" : "Destinatários",
      "definition" : "Para quem a tarefa é destinada."
    },
    {
      "id" : "Task.input",
      "path" : "Task.input",
      "short" : "Entradas",
      "definition" : "Informações usadas na execução."
    },
    {
      "id" : "Task.input.id",
      "path" : "Task.input.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Task.input.extension",
      "path" : "Task.input.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Task.input.modifierExtension",
      "path" : "Task.input.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Task.input.type",
      "path" : "Task.input.type",
      "short" : "Tipo da entrada",
      "definition" : "Código que identifica a entrada."
    },
    {
      "id" : "Task.input.value[x]",
      "path" : "Task.input.value[x]",
      "short" : "Valor da entrada",
      "definition" : "Conteúdo da entrada."
    },
    {
      "id" : "Task.output",
      "path" : "Task.output",
      "short" : "Resultado estruturado da etapa: dimensões avaliadas, decisão e recursos gerados",
      "definition" : "Resultados produzidos pela tarefa.",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.id",
      "path" : "Task.output.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Task.output.extension",
      "path" : "Task.output.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Task.output.modifierExtension",
      "path" : "Task.output.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Task.output.type",
      "path" : "Task.output.type",
      "short" : "Tipo do resultado",
      "definition" : "Código que identifica o resultado.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoSaidaTarefaRegulacao"
      }
    },
    {
      "id" : "Task.output.value[x]",
      "path" : "Task.output.value[x]",
      "short" : "Valor do resultado",
      "definition" : "Conteúdo do resultado.",
      "comment" : "Para dimensões e decisão: CodeableConcept de $BRResultadoDecisaoRegulatoria-vs. Para recursos gerados: Reference ao Appointment, à ClaimResponse da APAC/AIH, a uma nova requisição (redirecionamento) ou ao serviço de destino.",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-healthcareservice",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado",
        "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/transporte-sanitario",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
