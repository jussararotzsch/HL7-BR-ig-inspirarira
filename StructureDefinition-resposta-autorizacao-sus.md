# Resposta de Autorização SUS (APAC/AIH) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Resposta de Autorização SUS (APAC/AIH)**

## Resource Profile: Resposta de Autorização SUS (APAC/AIH) ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:RespostaAutorizacaoSUS |

 
Emissão, negativa ou crítica da APAC/AIH pelo gestor autorizador. Carrega o número e a validade da autorização. Estrutura alinhada ao perfil RespostaGuia (ClaimResponse) da ANS. 

**Usos:**

* Refere a este Perfil: [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md) and [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [ClaimResponse/claimresponse-aih-icc](ClaimResponse-claimresponse-aih-icc.md) and [ClaimResponse/claimresponse-apac-hemodialise](ClaimResponse-claimresponse-apac-hemodialise.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-resposta-autorizacao-sus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-resposta-autorizacao-sus.csv), [Excel](StructureDefinition-resposta-autorizacao-sus.xlsx), [Schematron](StructureDefinition-resposta-autorizacao-sus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "resposta-autorizacao-sus",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus",
  "version" : "0.1.0",
  "name" : "RespostaAutorizacaoSUS",
  "title" : "Resposta de Autorização SUS (APAC/AIH)",
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
  "description" : "Emissão, negativa ou crítica da APAC/AIH pelo gestor autorizador. Carrega o número e a validade da autorização. Estrutura alinhada ao perfil RespostaGuia (ClaimResponse) da ANS.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClaimResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClaimResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ClaimResponse",
      "path" : "ClaimResponse",
      "short" : "Resposta de Autorização SUS (APAC/AIH)",
      "definition" : "Emissão, negativa ou crítica da APAC/AIH pelo gestor autorizador. Carrega o número e a validade da autorização. Estrutura alinhada ao perfil RespostaGuia (ClaimResponse) da ANS.",
      "constraint" : [{
        "key" : "ra-1",
        "severity" : "error",
        "human" : "Autorização concluída (outcome = complete) DEVE informar o número (preAuthRef) e a validade (preAuthPeriod).",
        "expression" : "outcome = 'complete' implies (preAuthRef.exists() and preAuthPeriod.exists())",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"
      }]
    },
    {
      "id" : "ClaimResponse.id",
      "path" : "ClaimResponse.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.meta",
      "path" : "ClaimResponse.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "ClaimResponse.implicitRules",
      "path" : "ClaimResponse.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "ClaimResponse.language",
      "path" : "ClaimResponse.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "ClaimResponse.text",
      "path" : "ClaimResponse.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "ClaimResponse.contained",
      "path" : "ClaimResponse.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "ClaimResponse.extension",
      "path" : "ClaimResponse.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.modifierExtension",
      "path" : "ClaimResponse.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.identifier",
      "path" : "ClaimResponse.identifier",
      "short" : "Identificador da resposta",
      "definition" : "Identificador de negócio da resposta.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.status",
      "path" : "ClaimResponse.status",
      "short" : "Situação",
      "definition" : "active, cancelled, draft ou entered-in-error.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.type",
      "path" : "ClaimResponse.type",
      "short" : "Tipo",
      "definition" : "Categoria ampla da solicitação respondida.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.subType",
      "path" : "ClaimResponse.subType",
      "short" : "Subtipo",
      "definition" : "Instrumento específico (APAC, AIH).",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRInstrumentoAutorizacaoSUS"
      }
    },
    {
      "id" : "ClaimResponse.use",
      "path" : "ClaimResponse.use",
      "short" : "Finalidade",
      "definition" : "claim, preauthorization ou predetermination.",
      "patternCode" : "preauthorization",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.patient",
      "path" : "ClaimResponse.patient",
      "short" : "Paciente",
      "definition" : "Paciente a que se refere a resposta.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.created",
      "path" : "ClaimResponse.created",
      "short" : "Data da autorização",
      "definition" : "Data de criação da resposta.",
      "comment" : "Resolve a 'Data da Autorização' que o RIRA alocava em Appointment.created.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.insurer",
      "path" : "ClaimResponse.insurer",
      "short" : "Gestor ou operadora",
      "definition" : "Quem emitiu a resposta.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.requestor",
      "path" : "ClaimResponse.requestor",
      "short" : "Solicitante",
      "definition" : "Quem apresentou a solicitação.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.request",
      "path" : "ClaimResponse.request",
      "short" : "Solicitação respondida",
      "definition" : "Referência à solicitação original.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.outcome",
      "path" : "ClaimResponse.outcome",
      "short" : "Resultado do processamento",
      "definition" : "queued, complete, error ou partial.",
      "comment" : "remittance-outcome: complete (emitida), partial, error (negada ou devolvida pelo autorizador), queued.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.disposition",
      "path" : "ClaimResponse.disposition",
      "short" : "Mensagem do resultado",
      "definition" : "Descrição textual do resultado.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.preAuthRef",
      "path" : "ClaimResponse.preAuthRef",
      "short" : "Número da APAC/AIH",
      "definition" : "Número da autorização prévia emitida.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.preAuthPeriod",
      "path" : "ClaimResponse.preAuthPeriod",
      "short" : "Validade da APAC/AIH",
      "definition" : "Período de validade da autorização.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.payeeType",
      "path" : "ClaimResponse.payeeType",
      "short" : "Tipo de beneficiário",
      "definition" : "Categoria de quem recebe o pagamento."
    },
    {
      "id" : "ClaimResponse.item",
      "path" : "ClaimResponse.item",
      "short" : "Análise por item",
      "definition" : "Resultado para cada item da solicitação."
    },
    {
      "id" : "ClaimResponse.item.id",
      "path" : "ClaimResponse.item.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.item.extension",
      "path" : "ClaimResponse.item.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.item.modifierExtension",
      "path" : "ClaimResponse.item.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.item.itemSequence",
      "path" : "ClaimResponse.item.itemSequence",
      "short" : "Item analisado",
      "definition" : "Sequência do item na solicitação."
    },
    {
      "id" : "ClaimResponse.item.noteNumber",
      "path" : "ClaimResponse.item.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.item.adjudication",
      "path" : "ClaimResponse.item.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.item.adjudication.id",
      "path" : "ClaimResponse.item.adjudication.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.item.adjudication.extension",
      "path" : "ClaimResponse.item.adjudication.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.item.adjudication.modifierExtension",
      "path" : "ClaimResponse.item.adjudication.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.item.adjudication.category",
      "path" : "ClaimResponse.item.adjudication.category",
      "short" : "Tipo do valor",
      "definition" : "Tipo de resultado: elegível, coparticipação, glosa."
    },
    {
      "id" : "ClaimResponse.item.adjudication.reason",
      "path" : "ClaimResponse.item.adjudication.reason",
      "short" : "Motivo",
      "definition" : "Motivo do resultado."
    },
    {
      "id" : "ClaimResponse.item.adjudication.amount",
      "path" : "ClaimResponse.item.adjudication.amount",
      "short" : "Valor",
      "definition" : "Valor monetário."
    },
    {
      "id" : "ClaimResponse.item.adjudication.value",
      "path" : "ClaimResponse.item.adjudication.value",
      "short" : "Valor não monetário",
      "definition" : "Percentual ou quantidade."
    },
    {
      "id" : "ClaimResponse.item.detail",
      "path" : "ClaimResponse.item.detail",
      "short" : "Detalhe",
      "definition" : "Componente do item."
    },
    {
      "id" : "ClaimResponse.item.detail.id",
      "path" : "ClaimResponse.item.detail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.item.detail.extension",
      "path" : "ClaimResponse.item.detail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.item.detail.modifierExtension",
      "path" : "ClaimResponse.item.detail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.item.detail.detailSequence",
      "path" : "ClaimResponse.item.detail.detailSequence",
      "short" : "Detalhe analisado",
      "definition" : "Sequência do detalhe na solicitação."
    },
    {
      "id" : "ClaimResponse.item.detail.noteNumber",
      "path" : "ClaimResponse.item.detail.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.item.detail.adjudication",
      "path" : "ClaimResponse.item.detail.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail",
      "path" : "ClaimResponse.item.detail.subDetail",
      "short" : "Subdetalhe",
      "definition" : "Componente do detalhe."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.id",
      "path" : "ClaimResponse.item.detail.subDetail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.extension",
      "path" : "ClaimResponse.item.detail.subDetail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.modifierExtension",
      "path" : "ClaimResponse.item.detail.subDetail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.subDetailSequence",
      "path" : "ClaimResponse.item.detail.subDetail.subDetailSequence",
      "short" : "Subdetalhe analisado",
      "definition" : "Sequência do subdetalhe na solicitação."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.noteNumber",
      "path" : "ClaimResponse.item.detail.subDetail.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.item.detail.subDetail.adjudication",
      "path" : "ClaimResponse.item.detail.subDetail.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.addItem",
      "path" : "ClaimResponse.addItem",
      "short" : "Itens incluídos pelo pagador",
      "definition" : "Itens acrescentados pelo pagador."
    },
    {
      "id" : "ClaimResponse.addItem.id",
      "path" : "ClaimResponse.addItem.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.addItem.extension",
      "path" : "ClaimResponse.addItem.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.addItem.modifierExtension",
      "path" : "ClaimResponse.addItem.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.addItem.itemSequence",
      "path" : "ClaimResponse.addItem.itemSequence",
      "short" : "Item relacionado",
      "definition" : "Sequência do item da solicitação."
    },
    {
      "id" : "ClaimResponse.addItem.detailSequence",
      "path" : "ClaimResponse.addItem.detailSequence",
      "short" : "Detalhe relacionado",
      "definition" : "Sequência do detalhe da solicitação."
    },
    {
      "id" : "ClaimResponse.addItem.subdetailSequence",
      "path" : "ClaimResponse.addItem.subdetailSequence",
      "short" : "Subdetalhe relacionado",
      "definition" : "Sequência do subdetalhe da solicitação."
    },
    {
      "id" : "ClaimResponse.addItem.provider",
      "path" : "ClaimResponse.addItem.provider",
      "short" : "Prestadores autorizados",
      "definition" : "Prestadores autorizados para o item."
    },
    {
      "id" : "ClaimResponse.addItem.productOrService",
      "path" : "ClaimResponse.addItem.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.modifier",
      "path" : "ClaimResponse.addItem.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.programCode",
      "path" : "ClaimResponse.addItem.programCode",
      "short" : "Programa",
      "definition" : "Programa ao qual o serviço se vincula."
    },
    {
      "id" : "ClaimResponse.addItem.serviced[x]",
      "path" : "ClaimResponse.addItem.serviced[x]",
      "short" : "Data ou período do atendimento",
      "definition" : "Data ou período em que o serviço foi prestado."
    },
    {
      "id" : "ClaimResponse.addItem.location[x]",
      "path" : "ClaimResponse.addItem.location[x]",
      "short" : "Local do atendimento",
      "definition" : "Onde o serviço foi prestado."
    },
    {
      "id" : "ClaimResponse.addItem.quantity",
      "path" : "ClaimResponse.addItem.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos."
    },
    {
      "id" : "ClaimResponse.addItem.unitPrice",
      "path" : "ClaimResponse.addItem.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "ClaimResponse.addItem.factor",
      "path" : "ClaimResponse.addItem.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "ClaimResponse.addItem.net",
      "path" : "ClaimResponse.addItem.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "ClaimResponse.addItem.bodySite",
      "path" : "ClaimResponse.addItem.bodySite",
      "short" : "Local anatômico",
      "definition" : "Região anatômica."
    },
    {
      "id" : "ClaimResponse.addItem.subSite",
      "path" : "ClaimResponse.addItem.subSite",
      "short" : "Sublocal anatômico",
      "definition" : "Subdivisão do local anatômico."
    },
    {
      "id" : "ClaimResponse.addItem.noteNumber",
      "path" : "ClaimResponse.addItem.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.addItem.adjudication",
      "path" : "ClaimResponse.addItem.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.addItem.detail",
      "path" : "ClaimResponse.addItem.detail",
      "short" : "Detalhe",
      "definition" : "Componente do item."
    },
    {
      "id" : "ClaimResponse.addItem.detail.id",
      "path" : "ClaimResponse.addItem.detail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.addItem.detail.extension",
      "path" : "ClaimResponse.addItem.detail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.addItem.detail.modifierExtension",
      "path" : "ClaimResponse.addItem.detail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.addItem.detail.productOrService",
      "path" : "ClaimResponse.addItem.detail.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.detail.modifier",
      "path" : "ClaimResponse.addItem.detail.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.detail.quantity",
      "path" : "ClaimResponse.addItem.detail.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos."
    },
    {
      "id" : "ClaimResponse.addItem.detail.unitPrice",
      "path" : "ClaimResponse.addItem.detail.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "ClaimResponse.addItem.detail.factor",
      "path" : "ClaimResponse.addItem.detail.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "ClaimResponse.addItem.detail.net",
      "path" : "ClaimResponse.addItem.detail.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "ClaimResponse.addItem.detail.noteNumber",
      "path" : "ClaimResponse.addItem.detail.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.addItem.detail.adjudication",
      "path" : "ClaimResponse.addItem.detail.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail",
      "path" : "ClaimResponse.addItem.detail.subDetail",
      "short" : "Subdetalhe",
      "definition" : "Componente do detalhe."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.id",
      "path" : "ClaimResponse.addItem.detail.subDetail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.extension",
      "path" : "ClaimResponse.addItem.detail.subDetail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.modifierExtension",
      "path" : "ClaimResponse.addItem.detail.subDetail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.productOrService",
      "path" : "ClaimResponse.addItem.detail.subDetail.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.modifier",
      "path" : "ClaimResponse.addItem.detail.subDetail.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.quantity",
      "path" : "ClaimResponse.addItem.detail.subDetail.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.unitPrice",
      "path" : "ClaimResponse.addItem.detail.subDetail.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.factor",
      "path" : "ClaimResponse.addItem.detail.subDetail.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.net",
      "path" : "ClaimResponse.addItem.detail.subDetail.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.noteNumber",
      "path" : "ClaimResponse.addItem.detail.subDetail.noteNumber",
      "short" : "Notas aplicáveis",
      "definition" : "Números das notas que se aplicam."
    },
    {
      "id" : "ClaimResponse.addItem.detail.subDetail.adjudication",
      "path" : "ClaimResponse.addItem.detail.subDetail.adjudication",
      "short" : "Resultado da análise",
      "definition" : "Resultado da análise pelo autorizador: valores e motivos."
    },
    {
      "id" : "ClaimResponse.adjudication",
      "path" : "ClaimResponse.adjudication",
      "short" : "Resultado geral",
      "definition" : "Resultado da análise no nível da solicitação."
    },
    {
      "id" : "ClaimResponse.total",
      "path" : "ClaimResponse.total",
      "short" : "Totais",
      "definition" : "Totais por categoria."
    },
    {
      "id" : "ClaimResponse.total.id",
      "path" : "ClaimResponse.total.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.total.extension",
      "path" : "ClaimResponse.total.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.total.modifierExtension",
      "path" : "ClaimResponse.total.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.total.category",
      "path" : "ClaimResponse.total.category",
      "short" : "Categoria do total",
      "definition" : "Tipo de total."
    },
    {
      "id" : "ClaimResponse.total.amount",
      "path" : "ClaimResponse.total.amount",
      "short" : "Valor",
      "definition" : "Valor monetário do total."
    },
    {
      "id" : "ClaimResponse.payment",
      "path" : "ClaimResponse.payment",
      "short" : "Pagamento",
      "definition" : "Detalhes do pagamento."
    },
    {
      "id" : "ClaimResponse.payment.id",
      "path" : "ClaimResponse.payment.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.payment.extension",
      "path" : "ClaimResponse.payment.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.payment.modifierExtension",
      "path" : "ClaimResponse.payment.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.payment.type",
      "path" : "ClaimResponse.payment.type",
      "short" : "Tipo de pagamento",
      "definition" : "Parcial ou integral."
    },
    {
      "id" : "ClaimResponse.payment.adjustment",
      "path" : "ClaimResponse.payment.adjustment",
      "short" : "Ajuste",
      "definition" : "Valor de ajuste."
    },
    {
      "id" : "ClaimResponse.payment.adjustmentReason",
      "path" : "ClaimResponse.payment.adjustmentReason",
      "short" : "Motivo do ajuste",
      "definition" : "Motivo do ajuste."
    },
    {
      "id" : "ClaimResponse.payment.date",
      "path" : "ClaimResponse.payment.date",
      "short" : "Data do pagamento",
      "definition" : "Data prevista ou efetiva."
    },
    {
      "id" : "ClaimResponse.payment.amount",
      "path" : "ClaimResponse.payment.amount",
      "short" : "Valor monetário",
      "definition" : "Valor monetário."
    },
    {
      "id" : "ClaimResponse.payment.identifier",
      "path" : "ClaimResponse.payment.identifier",
      "short" : "Identificador do pagamento",
      "definition" : "Identificador do pagamento."
    },
    {
      "id" : "ClaimResponse.fundsReserve",
      "path" : "ClaimResponse.fundsReserve",
      "short" : "Reserva de recursos",
      "definition" : "Situação da reserva de recursos."
    },
    {
      "id" : "ClaimResponse.formCode",
      "path" : "ClaimResponse.formCode",
      "short" : "Formulário de impressão",
      "definition" : "Código do formulário."
    },
    {
      "id" : "ClaimResponse.form",
      "path" : "ClaimResponse.form",
      "short" : "Formulário",
      "definition" : "Formulário anexo."
    },
    {
      "id" : "ClaimResponse.processNote",
      "path" : "ClaimResponse.processNote",
      "short" : "Notas do processamento",
      "definition" : "Observações do pagador.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.processNote.id",
      "path" : "ClaimResponse.processNote.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.processNote.extension",
      "path" : "ClaimResponse.processNote.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.processNote.modifierExtension",
      "path" : "ClaimResponse.processNote.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.processNote.number",
      "path" : "ClaimResponse.processNote.number",
      "short" : "Número da nota",
      "definition" : "Identificador da nota."
    },
    {
      "id" : "ClaimResponse.processNote.type",
      "path" : "ClaimResponse.processNote.type",
      "short" : "Tipo de nota",
      "definition" : "display, print ou printoper."
    },
    {
      "id" : "ClaimResponse.processNote.text",
      "path" : "ClaimResponse.processNote.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "ClaimResponse.processNote.language",
      "path" : "ClaimResponse.processNote.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "ClaimResponse.communicationRequest",
      "path" : "ClaimResponse.communicationRequest",
      "short" : "Pedidos de informação",
      "definition" : "Pedidos de informação adicional."
    },
    {
      "id" : "ClaimResponse.insurance",
      "path" : "ClaimResponse.insurance",
      "short" : "Cobertura",
      "definition" : "Coberturas consideradas."
    },
    {
      "id" : "ClaimResponse.insurance.id",
      "path" : "ClaimResponse.insurance.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.insurance.extension",
      "path" : "ClaimResponse.insurance.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.insurance.modifierExtension",
      "path" : "ClaimResponse.insurance.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.insurance.sequence",
      "path" : "ClaimResponse.insurance.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "ClaimResponse.insurance.focal",
      "path" : "ClaimResponse.insurance.focal",
      "short" : "Cobertura principal",
      "definition" : "Indica a cobertura usada."
    },
    {
      "id" : "ClaimResponse.insurance.coverage",
      "path" : "ClaimResponse.insurance.coverage",
      "short" : "Cobertura",
      "definition" : "Referência à Coverage."
    },
    {
      "id" : "ClaimResponse.insurance.businessArrangement",
      "path" : "ClaimResponse.insurance.businessArrangement",
      "short" : "Acordo de negócio",
      "definition" : "Identificador de acordo."
    },
    {
      "id" : "ClaimResponse.insurance.claimResponse",
      "path" : "ClaimResponse.insurance.claimResponse",
      "short" : "Resposta anterior",
      "definition" : "Resposta de processamento anterior."
    },
    {
      "id" : "ClaimResponse.error",
      "path" : "ClaimResponse.error",
      "short" : "Críticas",
      "definition" : "Erros encontrados no processamento.",
      "mustSupport" : true
    },
    {
      "id" : "ClaimResponse.error.id",
      "path" : "ClaimResponse.error.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ClaimResponse.error.extension",
      "path" : "ClaimResponse.error.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ClaimResponse.error.modifierExtension",
      "path" : "ClaimResponse.error.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ClaimResponse.error.itemSequence",
      "path" : "ClaimResponse.error.itemSequence",
      "short" : "Item com crítica",
      "definition" : "Sequência do item."
    },
    {
      "id" : "ClaimResponse.error.detailSequence",
      "path" : "ClaimResponse.error.detailSequence",
      "short" : "Detalhe com crítica",
      "definition" : "Sequência do detalhe."
    },
    {
      "id" : "ClaimResponse.error.subDetailSequence",
      "path" : "ClaimResponse.error.subDetailSequence",
      "short" : "Subdetalhe com crítica",
      "definition" : "Sequência do subdetalhe."
    },
    {
      "id" : "ClaimResponse.error.code",
      "path" : "ClaimResponse.error.code",
      "short" : "Código da crítica",
      "definition" : "Código do erro."
    }]
  }
}

```
