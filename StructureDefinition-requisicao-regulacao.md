# Requisição de Regulação Assistencial - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Requisição de Regulação Assistencial**

## Resource Profile: Requisição de Regulação Assistencial ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:RequisicaoRegulacao |

 
Pedido clínico persistente submetido à regulação do acesso. Registra o que é solicitado, por quê, com que prioridade e com que apoio clínico, independentemente do canal de financiamento. Substitui BRRequisicaoRegulacaoAssistencial do RIRA. 

**Usos:**

* Refere a este Perfil: [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md), [Solicitação de Autorização SUS (APAC/AIH)](StructureDefinition-autorizacao-previa-sus.md), [Internação Regulada](StructureDefinition-internacao-regulada.md), [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md)... Show 2 more, [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md) and [Transporte Sanitário](StructureDefinition-transporte-sanitario.md)
* Exemplos para este Perfil: [ServiceRequest/sr-consulta-nefrologia](ServiceRequest-sr-consulta-nefrologia.md), [ServiceRequest/sr-consulta-urologia-excluida](ServiceRequest-sr-consulta-urologia-excluida.md), [ServiceRequest/sr-hemodialise](ServiceRequest-sr-hemodialise.md), [ServiceRequest/sr-leito-clinico](ServiceRequest-sr-leito-clinico.md)... Show 4 more, [ServiceRequest/sr-leito-uti](ServiceRequest-sr-leito-uti.md), [ServiceRequest/sr-oci-mama](ServiceRequest-sr-oci-mama.md), [ServiceRequest/sr-usg-abdome](ServiceRequest-sr-usg-abdome.md) and [ServiceRequest/sr-vaga-zero](ServiceRequest-sr-vaga-zero.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-requisicao-regulacao.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-requisicao-regulacao.csv), [Excel](StructureDefinition-requisicao-regulacao.xlsx), [Schematron](StructureDefinition-requisicao-regulacao.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "requisicao-regulacao",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao",
  "version" : "0.1.0",
  "name" : "RequisicaoRegulacao",
  "title" : "Requisição de Regulação Assistencial",
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
  "description" : "Pedido clínico persistente submetido à regulação do acesso. Registra o que é solicitado, por quê, com que prioridade e com que apoio clínico, independentemente do canal de financiamento. Substitui BRRequisicaoRegulacaoAssistencial do RIRA.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-servicerequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest",
      "short" : "Requisição de Regulação Assistencial",
      "definition" : "Pedido clínico persistente submetido à regulação do acesso. Registra o que é solicitado, por quê, com que prioridade e com que apoio clínico, independentemente do canal de financiamento. Substitui BRRequisicaoRegulacaoAssistencial do RIRA.",
      "constraint" : [{
        "key" : "rr-1",
        "severity" : "error",
        "human" : "Todo pedido regulado DEVE informar a indicação clínica (reasonCode ou reasonReference). Pedido sem indicação não é regulável de forma segura.",
        "expression" : "reasonCode.exists() or reasonReference.exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
      }]
    },
    {
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "short" : "Recursos contidos"
    },
    {
      "id" : "ServiceRequest.extension",
      "path" : "ServiceRequest.extension",
      "short" : "Extensões adicionais"
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "short" : "Identificador persistente da solicitação",
      "comment" : "Acompanha qualificação, autorização, fila, agendamento, execução e desfecho. NÃO reutilizar número de APAC, AIH ou guia como único identificador. No RIRA este elemento era 0..0.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.instantiatesCanonical",
      "path" : "ServiceRequest.instantiatesCanonical",
      "comment" : "Para OCI, DEVE apontar o ProtocoloOCI (url|versao).",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "comment" : "Controla só a vigência clínica do pedido: draft, active, on-hold, revoked, completed, entered-in-error. NÃO DEVE carregar estados de fila, autorização ou agendamento; esses ficam em TarefaRegulacao.businessStatus. O ValueSet próprio BRStatusRequisicaoRegulacaoAssistencial deixa de ser usado.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.intent",
      "path" : "ServiceRequest.intent",
      "comment" : "order para o pedido vigente. Usa request-intent padrão; o ValueSet próprio BRIntencaoRegulacao deixa de ser usado.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.priority",
      "path" : "ServiceRequest.priority",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "comment" : "SIGTAP para a regulação SUS. Outras terminologias (TUSS, SNOMED CT) PODEM ser usadas com ConceptMap governado. Atenção: BRProcedimentosNacionais, herdado do BR-Core, enumera TUSS-22 no pacote de terminologia, enquanto o ValueSet homônimo da RNDS é SIGTAP.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUS"
      }
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "comment" : "Contexto em que o pedido nasceu (seção 5 do guia do GT). No RIRA era 0..0.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "comment" : "Prazo, janela ou periodicidade clínica. Não confundir com a prioridade relativa na fila, que fica na TarefaRegulacao.",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.performerType",
      "path" : "ServiceRequest.performerType",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROcupacao"
      }
    },
    {
      "id" : "ServiceRequest.performer",
      "path" : "ServiceRequest.performer",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.reasonCode",
      "path" : "ServiceRequest.reasonCode",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "ServiceRequest.reasonReference",
      "path" : "ServiceRequest.reasonReference",
      "comment" : "Aceita Condition, Observation, DiagnosticReport ou DocumentReference, como no BR-Core. No RIRA estava restrito a um único BRCID10Avaliado (1..1).",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.insurance",
      "path" : "ServiceRequest.insurance",
      "comment" : "No SUS PODE apontar para a Coverage que representa o arranjo público responsável. Não representa o direito universal e NÃO DEVE bloquear o pedido."
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "comment" : "Observações, laudos, fragilidade e terapias prévias. Referências estruturadas antes de anexos.",
      "mustSupport" : true
    }]
  }
}

```
