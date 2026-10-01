# Solicitação de Autorização SUS (APAC/AIH) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Solicitação de Autorização SUS (APAC/AIH)**

## Resource Profile: Solicitação de Autorização SUS (APAC/AIH) ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:AutorizacaoPreviaSUS |

 
Solicitação de APAC ou AIH ao gestor autorizador. Pertence à camada administrativo-financeira e NÃO substitui a Requisição nem a Tarefa de Regulação. Estrutura alinhada aos perfis Guia (Claim) da ANS, sem dependência do pacote ANS. 

**Usos:**

* Refere a este Perfil: [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md), [Resposta de Autorização SUS (APAC/AIH)](StructureDefinition-resposta-autorizacao-sus.md) and [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [Claim/claim-aih-icc](Claim-claim-aih-icc.md) and [Claim/claim-apac-hemodialise](Claim-claim-apac-hemodialise.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-autorizacao-previa-sus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-autorizacao-previa-sus.csv), [Excel](StructureDefinition-autorizacao-previa-sus.xlsx), [Schematron](StructureDefinition-autorizacao-previa-sus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "autorizacao-previa-sus",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus",
  "version" : "0.1.0",
  "name" : "AutorizacaoPreviaSUS",
  "title" : "Solicitação de Autorização SUS (APAC/AIH)",
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
  "description" : "Solicitação de APAC ou AIH ao gestor autorizador. Pertence à camada administrativo-financeira e NÃO substitui a Requisição nem a Tarefa de Regulação. Estrutura alinhada aos perfis Guia (Claim) da ANS, sem dependência do pacote ANS.",
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
  "type" : "Claim",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Claim",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Claim",
      "path" : "Claim",
      "short" : "Solicitação de Autorização SUS (APAC/AIH)",
      "definition" : "Solicitação de APAC ou AIH ao gestor autorizador. Pertence à camada administrativo-financeira e NÃO substitui a Requisição nem a Tarefa de Regulação. Estrutura alinhada aos perfis Guia (Claim) da ANS, sem dependência do pacote ANS."
    },
    {
      "id" : "Claim.id",
      "path" : "Claim.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.meta",
      "path" : "Claim.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "Claim.implicitRules",
      "path" : "Claim.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "Claim.language",
      "path" : "Claim.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "Claim.text",
      "path" : "Claim.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "Claim.contained",
      "path" : "Claim.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "Claim.extension",
      "path" : "Claim.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.modifierExtension",
      "path" : "Claim.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.identifier",
      "path" : "Claim.identifier",
      "short" : "Identificador da solicitação",
      "definition" : "Identificador de negócio da solicitação.",
      "comment" : "Identificadores de negócio explícitos, como faz a ANS na Guia (número no prestador, número no autorizador).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.status",
      "path" : "Claim.status",
      "short" : "Situação",
      "definition" : "active, cancelled, draft ou entered-in-error.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.type",
      "path" : "Claim.type",
      "short" : "Tipo",
      "definition" : "Categoria ampla: institucional, profissional, odontológica, farmácia, visão.",
      "comment" : "institutional para APAC e AIH, que são apresentadas pelo estabelecimento (CNES).",
      "mustSupport" : true
    },
    {
      "id" : "Claim.subType",
      "path" : "Claim.subType",
      "short" : "Subtipo",
      "definition" : "Instrumento específico (APAC, AIH, BPA-I, RAAS).",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRInstrumentoAutorizacaoSUS"
      }
    },
    {
      "id" : "Claim.use",
      "path" : "Claim.use",
      "short" : "Finalidade",
      "definition" : "claim, preauthorization ou predetermination.",
      "patternCode" : "preauthorization",
      "mustSupport" : true
    },
    {
      "id" : "Claim.patient",
      "path" : "Claim.patient",
      "short" : "Paciente",
      "definition" : "Paciente que recebeu ou receberá o cuidado.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.billablePeriod",
      "path" : "Claim.billablePeriod",
      "short" : "Competência",
      "definition" : "Período a que a solicitação se refere."
    },
    {
      "id" : "Claim.created",
      "path" : "Claim.created",
      "short" : "Data da solicitação da autorização",
      "definition" : "Data de criação da solicitação.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.enterer",
      "path" : "Claim.enterer",
      "short" : "Responsável pelo registro",
      "definition" : "Quem registrou a solicitação."
    },
    {
      "id" : "Claim.insurer",
      "path" : "Claim.insurer",
      "short" : "Gestor autorizador (SES ou SMS)",
      "definition" : "Destinatário da solicitação.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.provider",
      "path" : "Claim.provider",
      "short" : "Estabelecimento solicitante (CNES)",
      "definition" : "Responsável pela solicitação.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.priority",
      "path" : "Claim.priority",
      "short" : "Prioridade",
      "definition" : "Prioridade de processamento.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.fundsReserve",
      "path" : "Claim.fundsReserve",
      "short" : "Reserva de recursos",
      "definition" : "Pedido de reserva de recursos."
    },
    {
      "id" : "Claim.related",
      "path" : "Claim.related",
      "short" : "Solicitações relacionadas",
      "definition" : "Outras solicitações relacionadas a esta."
    },
    {
      "id" : "Claim.related.id",
      "path" : "Claim.related.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.related.extension",
      "path" : "Claim.related.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.related.modifierExtension",
      "path" : "Claim.related.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.related.claim",
      "path" : "Claim.related.claim",
      "short" : "Solicitação relacionada",
      "definition" : "Referência à solicitação relacionada."
    },
    {
      "id" : "Claim.related.relationship",
      "path" : "Claim.related.relationship",
      "short" : "Tipo de relação",
      "definition" : "Como as solicitações se relacionam."
    },
    {
      "id" : "Claim.related.reference",
      "path" : "Claim.related.reference",
      "short" : "Referência de arquivo",
      "definition" : "Identificador de arquivo ou caso relacionado."
    },
    {
      "id" : "Claim.prescription",
      "path" : "Claim.prescription",
      "short" : "Prescrição",
      "definition" : "Prescrição que sustenta a solicitação."
    },
    {
      "id" : "Claim.originalPrescription",
      "path" : "Claim.originalPrescription",
      "short" : "Prescrição original",
      "definition" : "Prescrição original quando houve substituição."
    },
    {
      "id" : "Claim.payee",
      "path" : "Claim.payee",
      "short" : "Beneficiário do pagamento",
      "definition" : "Quem recebe o pagamento."
    },
    {
      "id" : "Claim.payee.id",
      "path" : "Claim.payee.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.payee.extension",
      "path" : "Claim.payee.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.payee.modifierExtension",
      "path" : "Claim.payee.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.payee.type",
      "path" : "Claim.payee.type",
      "short" : "Tipo de beneficiário",
      "definition" : "Categoria do beneficiário."
    },
    {
      "id" : "Claim.payee.party",
      "path" : "Claim.payee.party",
      "short" : "Beneficiário",
      "definition" : "Referência ao beneficiário."
    },
    {
      "id" : "Claim.referral",
      "path" : "Claim.referral",
      "short" : "Requisição de origem",
      "definition" : "Requisição clínica que originou a solicitação.",
      "comment" : "Liga a autorização ao pedido clínico, como Claim.referral na Guia da ANS.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Claim.facility",
      "path" : "Claim.facility",
      "short" : "Local de atendimento",
      "definition" : "Estabelecimento onde o serviço foi prestado."
    },
    {
      "id" : "Claim.careTeam",
      "path" : "Claim.careTeam",
      "short" : "Equipe",
      "definition" : "Profissionais envolvidos."
    },
    {
      "id" : "Claim.careTeam.id",
      "path" : "Claim.careTeam.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.careTeam.extension",
      "path" : "Claim.careTeam.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.careTeam.modifierExtension",
      "path" : "Claim.careTeam.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.careTeam.sequence",
      "path" : "Claim.careTeam.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.careTeam.provider",
      "path" : "Claim.careTeam.provider",
      "short" : "Profissional",
      "definition" : "Referência ao profissional."
    },
    {
      "id" : "Claim.careTeam.responsible",
      "path" : "Claim.careTeam.responsible",
      "short" : "Responsável",
      "definition" : "Indica o profissional responsável."
    },
    {
      "id" : "Claim.careTeam.role",
      "path" : "Claim.careTeam.role",
      "short" : "Função",
      "definition" : "Função do profissional."
    },
    {
      "id" : "Claim.careTeam.qualification",
      "path" : "Claim.careTeam.qualification",
      "short" : "Qualificação (CBO)",
      "definition" : "Ocupação ou qualificação do profissional."
    },
    {
      "id" : "Claim.supportingInfo",
      "path" : "Claim.supportingInfo",
      "short" : "Informações de apoio",
      "definition" : "Informações adicionais que sustentam a solicitação, como laudos.",
      "comment" : "Laudo para solicitação (DocumentReference ou QuestionnaireResponse).",
      "mustSupport" : true
    },
    {
      "id" : "Claim.supportingInfo.id",
      "path" : "Claim.supportingInfo.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.supportingInfo.extension",
      "path" : "Claim.supportingInfo.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.supportingInfo.modifierExtension",
      "path" : "Claim.supportingInfo.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.supportingInfo.sequence",
      "path" : "Claim.supportingInfo.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.supportingInfo.category",
      "path" : "Claim.supportingInfo.category",
      "short" : "Categoria da informação",
      "definition" : "Tipo de informação."
    },
    {
      "id" : "Claim.supportingInfo.code",
      "path" : "Claim.supportingInfo.code",
      "short" : "Código da informação",
      "definition" : "Código específico da informação."
    },
    {
      "id" : "Claim.supportingInfo.timing[x]",
      "path" : "Claim.supportingInfo.timing[x]",
      "short" : "Data ou período",
      "definition" : "Quando a informação se aplica."
    },
    {
      "id" : "Claim.supportingInfo.value[x]",
      "path" : "Claim.supportingInfo.value[x]",
      "short" : "Valor",
      "definition" : "Conteúdo da informação."
    },
    {
      "id" : "Claim.supportingInfo.reason",
      "path" : "Claim.supportingInfo.reason",
      "short" : "Motivo",
      "definition" : "Motivo da informação."
    },
    {
      "id" : "Claim.diagnosis",
      "path" : "Claim.diagnosis",
      "short" : "Diagnósticos",
      "definition" : "Diagnósticos relacionados.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.diagnosis.id",
      "path" : "Claim.diagnosis.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.diagnosis.extension",
      "path" : "Claim.diagnosis.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.diagnosis.modifierExtension",
      "path" : "Claim.diagnosis.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.diagnosis.sequence",
      "path" : "Claim.diagnosis.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.diagnosis.diagnosis[x]",
      "path" : "Claim.diagnosis.diagnosis[x]",
      "short" : "Diagnóstico",
      "definition" : "Código ou referência do diagnóstico.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRCID10"
      }
    },
    {
      "id" : "Claim.diagnosis.type",
      "path" : "Claim.diagnosis.type",
      "short" : "Tipo de diagnóstico",
      "definition" : "Papel do diagnóstico: principal, secundário."
    },
    {
      "id" : "Claim.diagnosis.onAdmission",
      "path" : "Claim.diagnosis.onAdmission",
      "short" : "Presente na admissão",
      "definition" : "Indica se o diagnóstico existia na admissão."
    },
    {
      "id" : "Claim.diagnosis.packageCode",
      "path" : "Claim.diagnosis.packageCode",
      "short" : "Grupo de diagnóstico",
      "definition" : "Código do pacote ou grupo de diagnóstico."
    },
    {
      "id" : "Claim.procedure",
      "path" : "Claim.procedure",
      "short" : "Procedimentos clínicos",
      "definition" : "Procedimentos clínicos realizados."
    },
    {
      "id" : "Claim.procedure.id",
      "path" : "Claim.procedure.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.procedure.extension",
      "path" : "Claim.procedure.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.procedure.modifierExtension",
      "path" : "Claim.procedure.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.procedure.sequence",
      "path" : "Claim.procedure.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.procedure.type",
      "path" : "Claim.procedure.type",
      "short" : "Tipo de procedimento",
      "definition" : "Categoria do procedimento."
    },
    {
      "id" : "Claim.procedure.date",
      "path" : "Claim.procedure.date",
      "short" : "Data do procedimento",
      "definition" : "Quando o procedimento foi realizado."
    },
    {
      "id" : "Claim.procedure.procedure[x]",
      "path" : "Claim.procedure.procedure[x]",
      "short" : "Procedimento",
      "definition" : "Código ou referência do procedimento."
    },
    {
      "id" : "Claim.procedure.udi",
      "path" : "Claim.procedure.udi",
      "short" : "Identificador único de dispositivo",
      "definition" : "Identificador único (UDI) do dispositivo usado."
    },
    {
      "id" : "Claim.insurance",
      "path" : "Claim.insurance",
      "short" : "Cobertura",
      "definition" : "Coberturas ou arranjos de custeio aplicáveis.",
      "comment" : "No SUS aponta para a Coverage do arranjo público (PPI, gestor responsável). Não simula plano individual nem condiciona o direito universal (seção 7.1 do guia do GT).",
      "mustSupport" : true
    },
    {
      "id" : "Claim.insurance.id",
      "path" : "Claim.insurance.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.insurance.extension",
      "path" : "Claim.insurance.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.insurance.modifierExtension",
      "path" : "Claim.insurance.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.insurance.sequence",
      "path" : "Claim.insurance.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.insurance.focal",
      "path" : "Claim.insurance.focal",
      "short" : "Cobertura principal",
      "definition" : "Indica a cobertura a ser usada nesta solicitação."
    },
    {
      "id" : "Claim.insurance.identifier",
      "path" : "Claim.insurance.identifier",
      "short" : "Identificador junto ao pagador",
      "definition" : "Identificador da solicitação no pagador."
    },
    {
      "id" : "Claim.insurance.coverage",
      "path" : "Claim.insurance.coverage",
      "short" : "Cobertura",
      "definition" : "Referência à Coverage."
    },
    {
      "id" : "Claim.insurance.businessArrangement",
      "path" : "Claim.insurance.businessArrangement",
      "short" : "Acordo de negócio",
      "definition" : "Identificador de acordo com o pagador."
    },
    {
      "id" : "Claim.insurance.preAuthRef",
      "path" : "Claim.insurance.preAuthRef",
      "short" : "Número da autorização prévia",
      "definition" : "Número da autorização prévia (APAC, AIH)."
    },
    {
      "id" : "Claim.insurance.claimResponse",
      "path" : "Claim.insurance.claimResponse",
      "short" : "Resposta anterior",
      "definition" : "Resposta de processamento anterior."
    },
    {
      "id" : "Claim.accident",
      "path" : "Claim.accident",
      "short" : "Acidente",
      "definition" : "Detalhes de acidente relacionado."
    },
    {
      "id" : "Claim.accident.id",
      "path" : "Claim.accident.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.accident.extension",
      "path" : "Claim.accident.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.accident.modifierExtension",
      "path" : "Claim.accident.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.accident.date",
      "path" : "Claim.accident.date",
      "short" : "Data do acidente",
      "definition" : "Quando o acidente ocorreu."
    },
    {
      "id" : "Claim.accident.type",
      "path" : "Claim.accident.type",
      "short" : "Tipo de acidente",
      "definition" : "Natureza do acidente."
    },
    {
      "id" : "Claim.accident.location[x]",
      "path" : "Claim.accident.location[x]",
      "short" : "Local do acidente",
      "definition" : "Onde o acidente ocorreu."
    },
    {
      "id" : "Claim.item",
      "path" : "Claim.item",
      "short" : "Itens",
      "definition" : "Procedimentos, produtos ou pacotes solicitados ou realizados.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.id",
      "path" : "Claim.item.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.item.extension",
      "path" : "Claim.item.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.item.modifierExtension",
      "path" : "Claim.item.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.item.sequence",
      "path" : "Claim.item.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.item.careTeamSequence",
      "path" : "Claim.item.careTeamSequence",
      "short" : "Equipe aplicável",
      "definition" : "Sequência dos membros da equipe envolvidos."
    },
    {
      "id" : "Claim.item.diagnosisSequence",
      "path" : "Claim.item.diagnosisSequence",
      "short" : "Diagnósticos aplicáveis",
      "definition" : "Sequência dos diagnósticos relacionados."
    },
    {
      "id" : "Claim.item.procedureSequence",
      "path" : "Claim.item.procedureSequence",
      "short" : "Procedimentos aplicáveis",
      "definition" : "Sequência dos procedimentos relacionados."
    },
    {
      "id" : "Claim.item.informationSequence",
      "path" : "Claim.item.informationSequence",
      "short" : "Informações aplicáveis",
      "definition" : "Sequência das informações de apoio relacionadas."
    },
    {
      "id" : "Claim.item.revenue",
      "path" : "Claim.item.revenue",
      "short" : "Centro de receita",
      "definition" : "Código do departamento ou centro de receita."
    },
    {
      "id" : "Claim.item.category",
      "path" : "Claim.item.category",
      "short" : "Categoria",
      "definition" : "Classificação da ocorrência."
    },
    {
      "id" : "Claim.item.productOrService",
      "path" : "Claim.item.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUS"
      }
    },
    {
      "id" : "Claim.item.modifier",
      "path" : "Claim.item.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "Claim.item.programCode",
      "path" : "Claim.item.programCode",
      "short" : "Programa",
      "definition" : "Programa ao qual o serviço se vincula."
    },
    {
      "id" : "Claim.item.serviced[x]",
      "path" : "Claim.item.serviced[x]",
      "short" : "Data ou período do atendimento",
      "definition" : "Data ou período em que o serviço foi prestado.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.location[x]",
      "path" : "Claim.item.location[x]",
      "short" : "Local do atendimento",
      "definition" : "Onde o serviço foi prestado."
    },
    {
      "id" : "Claim.item.quantity",
      "path" : "Claim.item.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos.",
      "mustSupport" : true
    },
    {
      "id" : "Claim.item.unitPrice",
      "path" : "Claim.item.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "Claim.item.factor",
      "path" : "Claim.item.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "Claim.item.net",
      "path" : "Claim.item.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "Claim.item.udi",
      "path" : "Claim.item.udi",
      "short" : "Identificador único de dispositivo",
      "definition" : "Identificador único (UDI) do dispositivo usado."
    },
    {
      "id" : "Claim.item.bodySite",
      "path" : "Claim.item.bodySite",
      "short" : "Local anatômico",
      "definition" : "Região anatômica."
    },
    {
      "id" : "Claim.item.subSite",
      "path" : "Claim.item.subSite",
      "short" : "Sublocal anatômico",
      "definition" : "Subdivisão do local anatômico."
    },
    {
      "id" : "Claim.item.encounter",
      "path" : "Claim.item.encounter",
      "short" : "Atendimentos",
      "definition" : "Atendimentos em que o item foi realizado."
    },
    {
      "id" : "Claim.item.detail",
      "path" : "Claim.item.detail",
      "short" : "Detalhe",
      "definition" : "Componente do item."
    },
    {
      "id" : "Claim.item.detail.id",
      "path" : "Claim.item.detail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.item.detail.extension",
      "path" : "Claim.item.detail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.item.detail.modifierExtension",
      "path" : "Claim.item.detail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.item.detail.sequence",
      "path" : "Claim.item.detail.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.item.detail.revenue",
      "path" : "Claim.item.detail.revenue",
      "short" : "Centro de receita",
      "definition" : "Código do departamento ou centro de receita."
    },
    {
      "id" : "Claim.item.detail.category",
      "path" : "Claim.item.detail.category",
      "short" : "Categoria",
      "definition" : "Classificação da ocorrência."
    },
    {
      "id" : "Claim.item.detail.productOrService",
      "path" : "Claim.item.detail.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto."
    },
    {
      "id" : "Claim.item.detail.modifier",
      "path" : "Claim.item.detail.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "Claim.item.detail.programCode",
      "path" : "Claim.item.detail.programCode",
      "short" : "Programa",
      "definition" : "Programa ao qual o serviço se vincula."
    },
    {
      "id" : "Claim.item.detail.quantity",
      "path" : "Claim.item.detail.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos."
    },
    {
      "id" : "Claim.item.detail.unitPrice",
      "path" : "Claim.item.detail.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "Claim.item.detail.factor",
      "path" : "Claim.item.detail.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "Claim.item.detail.net",
      "path" : "Claim.item.detail.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "Claim.item.detail.udi",
      "path" : "Claim.item.detail.udi",
      "short" : "Identificador único de dispositivo",
      "definition" : "Identificador único (UDI) do dispositivo usado."
    },
    {
      "id" : "Claim.item.detail.subDetail",
      "path" : "Claim.item.detail.subDetail",
      "short" : "Subdetalhe",
      "definition" : "Componente do detalhe."
    },
    {
      "id" : "Claim.item.detail.subDetail.id",
      "path" : "Claim.item.detail.subDetail.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Claim.item.detail.subDetail.extension",
      "path" : "Claim.item.detail.subDetail.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Claim.item.detail.subDetail.modifierExtension",
      "path" : "Claim.item.detail.subDetail.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Claim.item.detail.subDetail.sequence",
      "path" : "Claim.item.detail.subDetail.sequence",
      "short" : "Número sequencial",
      "definition" : "Número que identifica a ocorrência dentro da lista."
    },
    {
      "id" : "Claim.item.detail.subDetail.revenue",
      "path" : "Claim.item.detail.subDetail.revenue",
      "short" : "Centro de receita",
      "definition" : "Código do departamento ou centro de receita."
    },
    {
      "id" : "Claim.item.detail.subDetail.category",
      "path" : "Claim.item.detail.subDetail.category",
      "short" : "Categoria",
      "definition" : "Classificação da ocorrência."
    },
    {
      "id" : "Claim.item.detail.subDetail.productOrService",
      "path" : "Claim.item.detail.subDetail.productOrService",
      "short" : "Procedimento ou produto",
      "definition" : "Código do procedimento, serviço ou produto."
    },
    {
      "id" : "Claim.item.detail.subDetail.modifier",
      "path" : "Claim.item.detail.subDetail.modifier",
      "short" : "Modificadores do serviço",
      "definition" : "Códigos que qualificam o serviço ou produto."
    },
    {
      "id" : "Claim.item.detail.subDetail.programCode",
      "path" : "Claim.item.detail.subDetail.programCode",
      "short" : "Programa",
      "definition" : "Programa ao qual o serviço se vincula."
    },
    {
      "id" : "Claim.item.detail.subDetail.quantity",
      "path" : "Claim.item.detail.subDetail.quantity",
      "short" : "Quantidade",
      "definition" : "Quantidade de serviços ou produtos."
    },
    {
      "id" : "Claim.item.detail.subDetail.unitPrice",
      "path" : "Claim.item.detail.subDetail.unitPrice",
      "short" : "Valor unitário",
      "definition" : "Valor de uma unidade."
    },
    {
      "id" : "Claim.item.detail.subDetail.factor",
      "path" : "Claim.item.detail.subDetail.factor",
      "short" : "Fator de preço",
      "definition" : "Fator multiplicador aplicado ao valor."
    },
    {
      "id" : "Claim.item.detail.subDetail.net",
      "path" : "Claim.item.detail.subDetail.net",
      "short" : "Valor total",
      "definition" : "Quantidade multiplicada pelo valor unitário e pelo fator."
    },
    {
      "id" : "Claim.item.detail.subDetail.udi",
      "path" : "Claim.item.detail.subDetail.udi",
      "short" : "Identificador único de dispositivo",
      "definition" : "Identificador único (UDI) do dispositivo usado."
    },
    {
      "id" : "Claim.total",
      "path" : "Claim.total",
      "short" : "Valor total",
      "definition" : "Valor total da solicitação."
    }]
  }
}

```
