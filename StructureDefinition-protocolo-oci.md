# Protocolo de Oferta de Cuidados Integrados (OCI) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Protocolo de Oferta de Cuidados Integrados (OCI)**

## Resource Profile: Protocolo de Oferta de Cuidados Integrados (OCI) ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:ProtocoloOCI |

 
Composição, obrigatoriedade dos procedimentos e prazo de conclusão de uma OCI do SUS. É artefato definicional: não representa fila, pedido nem decisão. A requisição da OCI aponta para ele em ServiceRequest.instantiatesCanonical. 

**Usos:**

* Exemplos para este Perfil: [ProtocoloOCIIC](PlanDefinition-protocolo-oci-ic.md) and [ProtocoloOCIMama](PlanDefinition-protocolo-oci-mama.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-protocolo-oci.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-protocolo-oci.csv), [Excel](StructureDefinition-protocolo-oci.xlsx), [Schematron](StructureDefinition-protocolo-oci.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "protocolo-oci",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci",
  "version" : "0.1.0",
  "name" : "ProtocoloOCI",
  "title" : "Protocolo de Oferta de Cuidados Integrados (OCI)",
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
  "description" : "Composição, obrigatoriedade dos procedimentos e prazo de conclusão de uma OCI do SUS. É artefato definicional: não representa fila, pedido nem decisão. A requisição da OCI aponta para ele em ServiceRequest.instantiatesCanonical.",
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
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PlanDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PlanDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PlanDefinition",
      "path" : "PlanDefinition",
      "short" : "Protocolo de Oferta de Cuidados Integrados (OCI)",
      "definition" : "Composição, obrigatoriedade dos procedimentos e prazo de conclusão de uma OCI do SUS. É artefato definicional: não representa fila, pedido nem decisão. A requisição da OCI aponta para ele em ServiceRequest.instantiatesCanonical.",
      "constraint" : [{
        "key" : "oci-1",
        "severity" : "error",
        "human" : "O protocolo da OCI DEVE declarar o código SIGTAP da oferta em useContext (code = focus).",
        "expression" : "useContext.where(code.code = 'focus' and value.ofType(CodeableConcept).exists()).exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci"
      }]
    },
    {
      "id" : "PlanDefinition.id",
      "path" : "PlanDefinition.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.meta",
      "path" : "PlanDefinition.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "PlanDefinition.implicitRules",
      "path" : "PlanDefinition.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "PlanDefinition.language",
      "path" : "PlanDefinition.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "PlanDefinition.text",
      "path" : "PlanDefinition.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "PlanDefinition.contained",
      "path" : "PlanDefinition.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "PlanDefinition.extension",
      "path" : "PlanDefinition.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.modifierExtension",
      "path" : "PlanDefinition.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.url",
      "path" : "PlanDefinition.url",
      "short" : "URL canônica",
      "definition" : "Identificador canônico, globalmente único, do artefato.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.identifier",
      "path" : "PlanDefinition.identifier",
      "short" : "Identificador de negócio",
      "definition" : "Identificador externo atribuído ao recurso pelo sistema de origem."
    },
    {
      "id" : "PlanDefinition.version",
      "path" : "PlanDefinition.version",
      "short" : "Versão",
      "definition" : "Versão de negócio do artefato.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.name",
      "path" : "PlanDefinition.name",
      "short" : "Nome computável",
      "definition" : "Nome legível por máquina.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.title",
      "path" : "PlanDefinition.title",
      "short" : "Título",
      "definition" : "Nome legível por pessoas.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.subtitle",
      "path" : "PlanDefinition.subtitle",
      "short" : "Subtítulo",
      "definition" : "Subtítulo do protocolo."
    },
    {
      "id" : "PlanDefinition.type",
      "path" : "PlanDefinition.type",
      "short" : "Tipo de definição",
      "definition" : "order-set, clinical-protocol, eca-rule ou workflow-definition.",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
          "code" : "order-set"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.status",
      "path" : "PlanDefinition.status",
      "short" : "Situação",
      "definition" : "Situação do recurso no seu ciclo de vida.",
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.experimental",
      "path" : "PlanDefinition.experimental",
      "short" : "Uso experimental",
      "definition" : "Indica que o artefato é para teste e não para uso real."
    },
    {
      "id" : "PlanDefinition.subject[x]",
      "path" : "PlanDefinition.subject[x]",
      "short" : "Tipo de sujeito",
      "definition" : "Tipo de indivíduo a que o protocolo se aplica."
    },
    {
      "id" : "PlanDefinition.date",
      "path" : "PlanDefinition.date",
      "short" : "Data",
      "definition" : "Data da última alteração relevante."
    },
    {
      "id" : "PlanDefinition.publisher",
      "path" : "PlanDefinition.publisher",
      "short" : "Publicador",
      "definition" : "Organização ou pessoa responsável pela publicação."
    },
    {
      "id" : "PlanDefinition.contact",
      "path" : "PlanDefinition.contact",
      "short" : "Contato do publicador",
      "definition" : "Dados de contato do publicador."
    },
    {
      "id" : "PlanDefinition.description",
      "path" : "PlanDefinition.description",
      "short" : "Descrição",
      "definition" : "Descrição em linguagem natural."
    },
    {
      "id" : "PlanDefinition.useContext",
      "path" : "PlanDefinition.useContext",
      "short" : "Contexto de uso",
      "definition" : "Contexto em que o conteúdo se aplica.",
      "comment" : "useContext com code = focus carrega o código SIGTAP da OCI (grupo 09).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.jurisdiction",
      "path" : "PlanDefinition.jurisdiction",
      "short" : "Jurisdição",
      "definition" : "Jurisdição em que o artefato se aplica."
    },
    {
      "id" : "PlanDefinition.purpose",
      "path" : "PlanDefinition.purpose",
      "short" : "Finalidade",
      "definition" : "Por que o artefato existe."
    },
    {
      "id" : "PlanDefinition.usage",
      "path" : "PlanDefinition.usage",
      "short" : "Orientação de uso",
      "definition" : "Como o protocolo deve ser usado."
    },
    {
      "id" : "PlanDefinition.copyright",
      "path" : "PlanDefinition.copyright",
      "short" : "Direitos de uso",
      "definition" : "Restrições de uso e publicação."
    },
    {
      "id" : "PlanDefinition.approvalDate",
      "path" : "PlanDefinition.approvalDate",
      "short" : "Data de aprovação",
      "definition" : "Data em que o publicador aprovou o conteúdo."
    },
    {
      "id" : "PlanDefinition.lastReviewDate",
      "path" : "PlanDefinition.lastReviewDate",
      "short" : "Data da última revisão",
      "definition" : "Data da última revisão do conteúdo."
    },
    {
      "id" : "PlanDefinition.effectivePeriod",
      "path" : "PlanDefinition.effectivePeriod",
      "short" : "Vigência da composição",
      "definition" : "Período em que o artefato está vigente.",
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.topic",
      "path" : "PlanDefinition.topic",
      "short" : "Temas",
      "definition" : "Categorias temáticas."
    },
    {
      "id" : "PlanDefinition.author",
      "path" : "PlanDefinition.author",
      "short" : "Autores",
      "definition" : "Quem elaborou o conteúdo."
    },
    {
      "id" : "PlanDefinition.editor",
      "path" : "PlanDefinition.editor",
      "short" : "Editores",
      "definition" : "Quem editou o conteúdo."
    },
    {
      "id" : "PlanDefinition.reviewer",
      "path" : "PlanDefinition.reviewer",
      "short" : "Revisores",
      "definition" : "Quem revisou o conteúdo."
    },
    {
      "id" : "PlanDefinition.endorser",
      "path" : "PlanDefinition.endorser",
      "short" : "Endossantes",
      "definition" : "Quem endossa o conteúdo."
    },
    {
      "id" : "PlanDefinition.relatedArtifact",
      "path" : "PlanDefinition.relatedArtifact",
      "short" : "Artefatos relacionados",
      "definition" : "Normas, documentação e artefatos dos quais depende.",
      "comment" : "DEVE referenciar a norma de origem (documentation) e a RegraReembolsoOCI correspondente (depends-on).",
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.library",
      "path" : "PlanDefinition.library",
      "short" : "Lógica (Library)",
      "definition" : "Bibliotecas com a lógica usada."
    },
    {
      "id" : "PlanDefinition.goal",
      "path" : "PlanDefinition.goal",
      "short" : "Metas",
      "definition" : "Metas que o protocolo busca."
    },
    {
      "id" : "PlanDefinition.goal.id",
      "path" : "PlanDefinition.goal.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.goal.extension",
      "path" : "PlanDefinition.goal.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.goal.modifierExtension",
      "path" : "PlanDefinition.goal.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.goal.category",
      "path" : "PlanDefinition.goal.category",
      "short" : "Categoria da meta",
      "definition" : "Tipo de meta."
    },
    {
      "id" : "PlanDefinition.goal.description",
      "path" : "PlanDefinition.goal.description",
      "short" : "Descrição da meta",
      "definition" : "O que a meta pretende."
    },
    {
      "id" : "PlanDefinition.goal.priority",
      "path" : "PlanDefinition.goal.priority",
      "short" : "Prioridade da meta",
      "definition" : "high, medium ou low."
    },
    {
      "id" : "PlanDefinition.goal.start",
      "path" : "PlanDefinition.goal.start",
      "short" : "Início da meta",
      "definition" : "Quando a meta começa."
    },
    {
      "id" : "PlanDefinition.goal.addresses",
      "path" : "PlanDefinition.goal.addresses",
      "short" : "Problemas abordados",
      "definition" : "Condições que a meta aborda."
    },
    {
      "id" : "PlanDefinition.goal.documentation",
      "path" : "PlanDefinition.goal.documentation",
      "short" : "Evidências da meta",
      "definition" : "Documentação de apoio."
    },
    {
      "id" : "PlanDefinition.goal.target",
      "path" : "PlanDefinition.goal.target",
      "short" : "Alvos",
      "definition" : "Valores alvo da meta."
    },
    {
      "id" : "PlanDefinition.goal.target.id",
      "path" : "PlanDefinition.goal.target.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.goal.target.extension",
      "path" : "PlanDefinition.goal.target.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.goal.target.modifierExtension",
      "path" : "PlanDefinition.goal.target.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.goal.target.measure",
      "path" : "PlanDefinition.goal.target.measure",
      "short" : "Parâmetro",
      "definition" : "O que é medido."
    },
    {
      "id" : "PlanDefinition.goal.target.detail[x]",
      "path" : "PlanDefinition.goal.target.detail[x]",
      "short" : "Valor alvo",
      "definition" : "Valor a ser atingido."
    },
    {
      "id" : "PlanDefinition.goal.target.due",
      "path" : "PlanDefinition.goal.target.due",
      "short" : "Prazo do alvo",
      "definition" : "Tempo para atingir o alvo."
    },
    {
      "id" : "PlanDefinition.action",
      "path" : "PlanDefinition.action",
      "short" : "A oferta como um todo",
      "definition" : "Ações que compõem o protocolo.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.action.id",
      "path" : "PlanDefinition.action.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.extension",
      "path" : "PlanDefinition.action.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.modifierExtension",
      "path" : "PlanDefinition.action.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.prefix",
      "path" : "PlanDefinition.action.prefix",
      "short" : "Prefixo",
      "definition" : "Rótulo para exibição."
    },
    {
      "id" : "PlanDefinition.action.title",
      "path" : "PlanDefinition.action.title",
      "short" : "Título da ação",
      "definition" : "Título da ação.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.action.description",
      "path" : "PlanDefinition.action.description",
      "short" : "Descrição da ação",
      "definition" : "Descrição da ação."
    },
    {
      "id" : "PlanDefinition.action.textEquivalent",
      "path" : "PlanDefinition.action.textEquivalent",
      "short" : "Equivalente textual",
      "definition" : "Versão em texto para sistemas sem suporte estruturado."
    },
    {
      "id" : "PlanDefinition.action.priority",
      "path" : "PlanDefinition.action.priority",
      "short" : "Prioridade",
      "definition" : "Urgência da ação."
    },
    {
      "id" : "PlanDefinition.action.code",
      "path" : "PlanDefinition.action.code",
      "short" : "Código da ação",
      "definition" : "Código que identifica a ação, como o procedimento SIGTAP."
    },
    {
      "id" : "PlanDefinition.action.reason",
      "path" : "PlanDefinition.action.reason",
      "short" : "Motivo",
      "definition" : "Por que a ação é executada."
    },
    {
      "id" : "PlanDefinition.action.documentation",
      "path" : "PlanDefinition.action.documentation",
      "short" : "Documentação",
      "definition" : "Material de apoio."
    },
    {
      "id" : "PlanDefinition.action.goalId",
      "path" : "PlanDefinition.action.goalId",
      "short" : "Metas atendidas",
      "definition" : "Metas a que a ação se refere."
    },
    {
      "id" : "PlanDefinition.action.subject[x]",
      "path" : "PlanDefinition.action.subject[x]",
      "short" : "Tipo de sujeito",
      "definition" : "Tipo de indivíduo da ação."
    },
    {
      "id" : "PlanDefinition.action.trigger",
      "path" : "PlanDefinition.action.trigger",
      "short" : "Gatilho",
      "definition" : "Quando a ação é disparada."
    },
    {
      "id" : "PlanDefinition.action.condition",
      "path" : "PlanDefinition.action.condition",
      "short" : "Condição",
      "definition" : "Condição para aplicar a ação."
    },
    {
      "id" : "PlanDefinition.action.condition.id",
      "path" : "PlanDefinition.action.condition.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.condition.extension",
      "path" : "PlanDefinition.action.condition.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.condition.modifierExtension",
      "path" : "PlanDefinition.action.condition.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.condition.kind",
      "path" : "PlanDefinition.action.condition.kind",
      "short" : "Tipo de condição",
      "definition" : "applicability, start ou stop."
    },
    {
      "id" : "PlanDefinition.action.condition.expression",
      "path" : "PlanDefinition.action.condition.expression",
      "short" : "Expressão",
      "definition" : "Expressão booleana da condição."
    },
    {
      "id" : "PlanDefinition.action.input",
      "path" : "PlanDefinition.action.input",
      "short" : "Dados de entrada",
      "definition" : "Dados necessários à ação."
    },
    {
      "id" : "PlanDefinition.action.output",
      "path" : "PlanDefinition.action.output",
      "short" : "Dados de saída",
      "definition" : "Dados produzidos pela ação."
    },
    {
      "id" : "PlanDefinition.action.relatedAction",
      "path" : "PlanDefinition.action.relatedAction",
      "short" : "Ação relacionada",
      "definition" : "Relação com outra ação."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.id",
      "path" : "PlanDefinition.action.relatedAction.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.extension",
      "path" : "PlanDefinition.action.relatedAction.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.modifierExtension",
      "path" : "PlanDefinition.action.relatedAction.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.actionId",
      "path" : "PlanDefinition.action.relatedAction.actionId",
      "short" : "Ação de referência",
      "definition" : "Identificador da ação relacionada."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.relationship",
      "path" : "PlanDefinition.action.relatedAction.relationship",
      "short" : "Tipo de relação",
      "definition" : "before, after, concurrent etc."
    },
    {
      "id" : "PlanDefinition.action.relatedAction.offset[x]",
      "path" : "PlanDefinition.action.relatedAction.offset[x]",
      "short" : "Intervalo",
      "definition" : "Tempo entre as ações."
    },
    {
      "id" : "PlanDefinition.action.timing[x]",
      "path" : "PlanDefinition.action.timing[x]",
      "short" : "Prazo máximo de conclusão da OCI",
      "definition" : "Quando a ação deve ocorrer; na OCI, o prazo de conclusão.",
      "min" : 1,
      "type" : [{
        "code" : "Duration"
      }],
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.action.participant",
      "path" : "PlanDefinition.action.participant",
      "short" : "Participantes",
      "definition" : "Quem participa da ação."
    },
    {
      "id" : "PlanDefinition.action.participant.id",
      "path" : "PlanDefinition.action.participant.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.participant.extension",
      "path" : "PlanDefinition.action.participant.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.participant.modifierExtension",
      "path" : "PlanDefinition.action.participant.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.participant.type",
      "path" : "PlanDefinition.action.participant.type",
      "short" : "Tipo de participante",
      "definition" : "patient, practitioner, related-person ou device."
    },
    {
      "id" : "PlanDefinition.action.participant.role",
      "path" : "PlanDefinition.action.participant.role",
      "short" : "Função",
      "definition" : "Função do participante."
    },
    {
      "id" : "PlanDefinition.action.type",
      "path" : "PlanDefinition.action.type",
      "short" : "Tipo de ação",
      "definition" : "create, update, remove ou fire-event."
    },
    {
      "id" : "PlanDefinition.action.groupingBehavior",
      "path" : "PlanDefinition.action.groupingBehavior",
      "short" : "Agrupamento",
      "definition" : "visual-group, logical-group ou sentence-group."
    },
    {
      "id" : "PlanDefinition.action.selectionBehavior",
      "path" : "PlanDefinition.action.selectionBehavior",
      "short" : "Seleção",
      "definition" : "Como as subações são selecionadas."
    },
    {
      "id" : "PlanDefinition.action.requiredBehavior",
      "path" : "PlanDefinition.action.requiredBehavior",
      "short" : "Obrigatoriedade",
      "definition" : "must, could ou must-unless-documented."
    },
    {
      "id" : "PlanDefinition.action.precheckBehavior",
      "path" : "PlanDefinition.action.precheckBehavior",
      "short" : "Pré-seleção",
      "definition" : "yes ou no."
    },
    {
      "id" : "PlanDefinition.action.cardinalityBehavior",
      "path" : "PlanDefinition.action.cardinalityBehavior",
      "short" : "Repetição",
      "definition" : "single ou multiple."
    },
    {
      "id" : "PlanDefinition.action.definition[x]",
      "path" : "PlanDefinition.action.definition[x]",
      "short" : "Definição da ação",
      "definition" : "ActivityDefinition ou PlanDefinition que descreve a ação."
    },
    {
      "id" : "PlanDefinition.action.transform",
      "path" : "PlanDefinition.action.transform",
      "short" : "Transformação",
      "definition" : "StructureMap aplicado."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue",
      "path" : "PlanDefinition.action.dynamicValue",
      "short" : "Valor dinâmico",
      "definition" : "Valor calculado na aplicação."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue.id",
      "path" : "PlanDefinition.action.dynamicValue.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue.extension",
      "path" : "PlanDefinition.action.dynamicValue.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue.modifierExtension",
      "path" : "PlanDefinition.action.dynamicValue.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue.path",
      "path" : "PlanDefinition.action.dynamicValue.path",
      "short" : "Caminho",
      "definition" : "Elemento que recebe o valor."
    },
    {
      "id" : "PlanDefinition.action.dynamicValue.expression",
      "path" : "PlanDefinition.action.dynamicValue.expression",
      "short" : "Expressão",
      "definition" : "Expressão que calcula o valor."
    },
    {
      "id" : "PlanDefinition.action.action",
      "path" : "PlanDefinition.action.action",
      "short" : "Procedimentos componentes",
      "definition" : "Ações componentes; na OCI, os procedimentos.",
      "min" : 1,
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.action.action.id",
      "path" : "PlanDefinition.action.action.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.action.extension",
      "path" : "PlanDefinition.action.action.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.action.modifierExtension",
      "path" : "PlanDefinition.action.action.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.action.prefix",
      "path" : "PlanDefinition.action.action.prefix",
      "short" : "Prefixo",
      "definition" : "Rótulo para exibição."
    },
    {
      "id" : "PlanDefinition.action.action.title",
      "path" : "PlanDefinition.action.action.title",
      "definition" : "Nome legível por pessoas."
    },
    {
      "id" : "PlanDefinition.action.action.description",
      "path" : "PlanDefinition.action.action.description",
      "short" : "Descrição",
      "definition" : "Descrição em linguagem natural."
    },
    {
      "id" : "PlanDefinition.action.action.textEquivalent",
      "path" : "PlanDefinition.action.action.textEquivalent",
      "short" : "Equivalente textual",
      "definition" : "Versão em texto para sistemas sem suporte estruturado."
    },
    {
      "id" : "PlanDefinition.action.action.priority",
      "path" : "PlanDefinition.action.action.priority",
      "definition" : "Urgência da ação."
    },
    {
      "id" : "PlanDefinition.action.action.code",
      "path" : "PlanDefinition.action.action.code",
      "short" : "Código",
      "definition" : "Código que identifica o conceito.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUS"
      }
    },
    {
      "id" : "PlanDefinition.action.action.reason",
      "path" : "PlanDefinition.action.action.reason",
      "short" : "Motivo",
      "definition" : "Motivo da ocorrência."
    },
    {
      "id" : "PlanDefinition.action.action.documentation",
      "path" : "PlanDefinition.action.action.documentation",
      "short" : "Documentação",
      "definition" : "Material de apoio."
    },
    {
      "id" : "PlanDefinition.action.action.goalId",
      "path" : "PlanDefinition.action.action.goalId",
      "short" : "Metas atendidas",
      "definition" : "Metas a que a ação se refere."
    },
    {
      "id" : "PlanDefinition.action.action.subject[x]",
      "path" : "PlanDefinition.action.action.subject[x]",
      "short" : "Tipo de sujeito",
      "definition" : "Tipo de indivíduo da ação."
    },
    {
      "id" : "PlanDefinition.action.action.trigger",
      "path" : "PlanDefinition.action.action.trigger",
      "short" : "Gatilho",
      "definition" : "Quando a ação é disparada."
    },
    {
      "id" : "PlanDefinition.action.action.condition",
      "path" : "PlanDefinition.action.action.condition",
      "short" : "Condição",
      "definition" : "Condição para aplicar a ação."
    },
    {
      "id" : "PlanDefinition.action.action.condition.id",
      "path" : "PlanDefinition.action.action.condition.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.action.condition.extension",
      "path" : "PlanDefinition.action.action.condition.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.action.condition.modifierExtension",
      "path" : "PlanDefinition.action.action.condition.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.action.condition.kind",
      "path" : "PlanDefinition.action.action.condition.kind",
      "definition" : "applicability, start ou stop."
    },
    {
      "id" : "PlanDefinition.action.action.condition.expression",
      "path" : "PlanDefinition.action.action.condition.expression",
      "definition" : "Expressão booleana da condição."
    },
    {
      "id" : "PlanDefinition.action.action.input",
      "path" : "PlanDefinition.action.action.input",
      "definition" : "Dados necessários à ação."
    },
    {
      "id" : "PlanDefinition.action.action.output",
      "path" : "PlanDefinition.action.action.output",
      "definition" : "Dados produzidos pela ação."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction",
      "path" : "PlanDefinition.action.action.relatedAction",
      "short" : "Ação relacionada",
      "definition" : "Relação com outra ação."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.id",
      "path" : "PlanDefinition.action.action.relatedAction.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.extension",
      "path" : "PlanDefinition.action.action.relatedAction.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.modifierExtension",
      "path" : "PlanDefinition.action.action.relatedAction.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.actionId",
      "path" : "PlanDefinition.action.action.relatedAction.actionId",
      "short" : "Ação de referência",
      "definition" : "Identificador da ação relacionada."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.relationship",
      "path" : "PlanDefinition.action.action.relatedAction.relationship",
      "short" : "Tipo de relação",
      "definition" : "before, after, concurrent etc."
    },
    {
      "id" : "PlanDefinition.action.action.relatedAction.offset[x]",
      "path" : "PlanDefinition.action.action.relatedAction.offset[x]",
      "short" : "Intervalo",
      "definition" : "Tempo entre as ações."
    },
    {
      "id" : "PlanDefinition.action.action.timing[x]",
      "path" : "PlanDefinition.action.action.timing[x]",
      "short" : "Prazo ou momento",
      "definition" : "Quando a ação deve ocorrer; na OCI, o prazo de conclusão."
    },
    {
      "id" : "PlanDefinition.action.action.participant",
      "path" : "PlanDefinition.action.action.participant",
      "short" : "Participantes",
      "definition" : "Quem participa da ação."
    },
    {
      "id" : "PlanDefinition.action.action.participant.id",
      "path" : "PlanDefinition.action.action.participant.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.action.participant.extension",
      "path" : "PlanDefinition.action.action.participant.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.action.participant.modifierExtension",
      "path" : "PlanDefinition.action.action.participant.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.action.participant.type",
      "path" : "PlanDefinition.action.action.participant.type",
      "definition" : "Tipo da ocorrência."
    },
    {
      "id" : "PlanDefinition.action.action.participant.role",
      "path" : "PlanDefinition.action.action.participant.role",
      "definition" : "Função do participante."
    },
    {
      "id" : "PlanDefinition.action.action.type",
      "path" : "PlanDefinition.action.action.type",
      "definition" : "Tipo da ocorrência."
    },
    {
      "id" : "PlanDefinition.action.action.groupingBehavior",
      "path" : "PlanDefinition.action.action.groupingBehavior",
      "definition" : "visual-group, logical-group ou sentence-group."
    },
    {
      "id" : "PlanDefinition.action.action.selectionBehavior",
      "path" : "PlanDefinition.action.action.selectionBehavior",
      "short" : "Seleção",
      "definition" : "Como as subações são selecionadas."
    },
    {
      "id" : "PlanDefinition.action.action.requiredBehavior",
      "path" : "PlanDefinition.action.action.requiredBehavior",
      "definition" : "must, could ou must-unless-documented.",
      "comment" : "must = obrigatório para o pagamento da OCI; could = opcional, conforme indicação.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PlanDefinition.action.action.precheckBehavior",
      "path" : "PlanDefinition.action.action.precheckBehavior",
      "definition" : "yes ou no."
    },
    {
      "id" : "PlanDefinition.action.action.cardinalityBehavior",
      "path" : "PlanDefinition.action.action.cardinalityBehavior",
      "definition" : "single ou multiple."
    },
    {
      "id" : "PlanDefinition.action.action.definition[x]",
      "path" : "PlanDefinition.action.action.definition[x]",
      "short" : "Definição da ação",
      "definition" : "ActivityDefinition ou PlanDefinition que descreve a ação."
    },
    {
      "id" : "PlanDefinition.action.action.transform",
      "path" : "PlanDefinition.action.action.transform",
      "short" : "Transformação",
      "definition" : "StructureMap aplicado."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue",
      "path" : "PlanDefinition.action.action.dynamicValue",
      "short" : "Valor dinâmico",
      "definition" : "Valor calculado na aplicação."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue.id",
      "path" : "PlanDefinition.action.action.dynamicValue.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue.extension",
      "path" : "PlanDefinition.action.action.dynamicValue.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue.modifierExtension",
      "path" : "PlanDefinition.action.action.dynamicValue.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue.path",
      "path" : "PlanDefinition.action.action.dynamicValue.path",
      "short" : "Caminho",
      "definition" : "Elemento que recebe o valor."
    },
    {
      "id" : "PlanDefinition.action.action.dynamicValue.expression",
      "path" : "PlanDefinition.action.action.dynamicValue.expression",
      "short" : "Expressão",
      "definition" : "Expressão que calcula o valor."
    },
    {
      "id" : "PlanDefinition.action.action.action",
      "path" : "PlanDefinition.action.action.action",
      "definition" : "Ações que compõem o protocolo."
    }]
  }
}

```
