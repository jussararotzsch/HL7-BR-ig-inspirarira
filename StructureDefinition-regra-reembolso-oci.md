# Regra de Reembolso de OCI - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Regra de Reembolso de OCI**

## Resource Profile: Regra de Reembolso de OCI ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:RegraReembolsoOCI |

 
Condições de pagamento e valor de referência de uma OCI do SUS. As condições (applicability) são avaliadas sobre o Registro de Produção SUS: procedimentos obrigatórios realizados, conclusão no prazo e habilitação do executante. Pagamento por pacote, não por procedimento isolado. 

**Usos:**

* Exemplos para este Perfil: [ChargeItemDefinition/regra-reembolso-oci-ic](ChargeItemDefinition-regra-reembolso-oci-ic.md) and [ChargeItemDefinition/regra-reembolso-oci-mama](ChargeItemDefinition-regra-reembolso-oci-mama.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-regra-reembolso-oci.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-regra-reembolso-oci.csv), [Excel](StructureDefinition-regra-reembolso-oci.xlsx), [Schematron](StructureDefinition-regra-reembolso-oci.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "regra-reembolso-oci",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci",
  "version" : "0.1.0",
  "name" : "RegraReembolsoOCI",
  "title" : "Regra de Reembolso de OCI",
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
  "description" : "Condições de pagamento e valor de referência de uma OCI do SUS. As condições (applicability) são avaliadas sobre o Registro de Produção SUS: procedimentos obrigatórios realizados, conclusão no prazo e habilitação do executante. Pagamento por pacote, não por procedimento isolado.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ChargeItemDefinition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ChargeItemDefinition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ChargeItemDefinition",
      "path" : "ChargeItemDefinition",
      "short" : "Regra de Reembolso de OCI",
      "definition" : "Condições de pagamento e valor de referência de uma OCI do SUS. As condições (applicability) são avaliadas sobre o Registro de Produção SUS: procedimentos obrigatórios realizados, conclusão no prazo e habilitação do executante. Pagamento por pacote, não por procedimento isolado."
    },
    {
      "id" : "ChargeItemDefinition.id",
      "path" : "ChargeItemDefinition.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ChargeItemDefinition.meta",
      "path" : "ChargeItemDefinition.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "ChargeItemDefinition.implicitRules",
      "path" : "ChargeItemDefinition.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "ChargeItemDefinition.language",
      "path" : "ChargeItemDefinition.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "ChargeItemDefinition.text",
      "path" : "ChargeItemDefinition.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "ChargeItemDefinition.contained",
      "path" : "ChargeItemDefinition.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "ChargeItemDefinition.extension",
      "path" : "ChargeItemDefinition.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ChargeItemDefinition.modifierExtension",
      "path" : "ChargeItemDefinition.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ChargeItemDefinition.url",
      "path" : "ChargeItemDefinition.url",
      "short" : "URL canônica",
      "definition" : "Identificador canônico, globalmente único, do artefato.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.identifier",
      "path" : "ChargeItemDefinition.identifier",
      "short" : "Identificador de negócio",
      "definition" : "Identificador externo atribuído ao recurso pelo sistema de origem."
    },
    {
      "id" : "ChargeItemDefinition.version",
      "path" : "ChargeItemDefinition.version",
      "short" : "Versão",
      "definition" : "Versão de negócio do artefato.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.title",
      "path" : "ChargeItemDefinition.title",
      "short" : "Título",
      "definition" : "Nome legível por pessoas.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.derivedFromUri",
      "path" : "ChargeItemDefinition.derivedFromUri",
      "short" : "Norma que institui a OCI e a regra de pagamento",
      "definition" : "Norma ou documento de que a regra deriva.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.partOf",
      "path" : "ChargeItemDefinition.partOf",
      "short" : "Definição maior",
      "definition" : "Definição da qual esta faz parte."
    },
    {
      "id" : "ChargeItemDefinition.replaces",
      "path" : "ChargeItemDefinition.replaces",
      "short" : "Definição substituída",
      "definition" : "Definição anterior substituída."
    },
    {
      "id" : "ChargeItemDefinition.status",
      "path" : "ChargeItemDefinition.status",
      "short" : "Situação",
      "definition" : "Situação do recurso no seu ciclo de vida.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.experimental",
      "path" : "ChargeItemDefinition.experimental",
      "short" : "Uso experimental",
      "definition" : "Indica que o artefato é para teste e não para uso real."
    },
    {
      "id" : "ChargeItemDefinition.date",
      "path" : "ChargeItemDefinition.date",
      "short" : "Data",
      "definition" : "Data da última alteração relevante."
    },
    {
      "id" : "ChargeItemDefinition.publisher",
      "path" : "ChargeItemDefinition.publisher",
      "short" : "Publicador",
      "definition" : "Organização ou pessoa responsável pela publicação."
    },
    {
      "id" : "ChargeItemDefinition.contact",
      "path" : "ChargeItemDefinition.contact",
      "short" : "Contato do publicador",
      "definition" : "Dados de contato do publicador."
    },
    {
      "id" : "ChargeItemDefinition.description",
      "path" : "ChargeItemDefinition.description",
      "short" : "Descrição",
      "definition" : "Descrição em linguagem natural."
    },
    {
      "id" : "ChargeItemDefinition.useContext",
      "path" : "ChargeItemDefinition.useContext",
      "short" : "Contexto de uso",
      "definition" : "Contexto em que o conteúdo se aplica."
    },
    {
      "id" : "ChargeItemDefinition.jurisdiction",
      "path" : "ChargeItemDefinition.jurisdiction",
      "short" : "Jurisdição",
      "definition" : "Jurisdição em que o artefato se aplica."
    },
    {
      "id" : "ChargeItemDefinition.copyright",
      "path" : "ChargeItemDefinition.copyright",
      "short" : "Direitos de uso",
      "definition" : "Restrições de uso e publicação."
    },
    {
      "id" : "ChargeItemDefinition.approvalDate",
      "path" : "ChargeItemDefinition.approvalDate",
      "short" : "Data de aprovação",
      "definition" : "Data em que o publicador aprovou o conteúdo."
    },
    {
      "id" : "ChargeItemDefinition.lastReviewDate",
      "path" : "ChargeItemDefinition.lastReviewDate",
      "short" : "Data da última revisão",
      "definition" : "Data da última revisão do conteúdo."
    },
    {
      "id" : "ChargeItemDefinition.effectivePeriod",
      "path" : "ChargeItemDefinition.effectivePeriod",
      "short" : "Competências em que a regra vale",
      "definition" : "Período em que o artefato está vigente.",
      "comment" : "DEVERIA ser informado: competências em que a regra vale. Mantido 0..1 porque o IG Publisher 2.x acusa falso positivo de cardinalidade neste elemento na conversão R4/R5.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.code",
      "path" : "ChargeItemDefinition.code",
      "short" : "Código SIGTAP da OCI (grupo 09)",
      "definition" : "Código do item cobrado.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BROCISUS"
      }
    },
    {
      "id" : "ChargeItemDefinition.instance",
      "path" : "ChargeItemDefinition.instance",
      "short" : "Instâncias",
      "definition" : "Recursos específicos a que se aplica."
    },
    {
      "id" : "ChargeItemDefinition.applicability",
      "path" : "ChargeItemDefinition.applicability",
      "short" : "Condição de pagamento",
      "definition" : "Condição que deve ser verdadeira para que a regra se aplique.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.applicability.id",
      "path" : "ChargeItemDefinition.applicability.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ChargeItemDefinition.applicability.extension",
      "path" : "ChargeItemDefinition.applicability.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ChargeItemDefinition.applicability.modifierExtension",
      "path" : "ChargeItemDefinition.applicability.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ChargeItemDefinition.applicability.description",
      "path" : "ChargeItemDefinition.applicability.description",
      "short" : "Descrição da condição",
      "definition" : "Descrição em texto.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.applicability.language",
      "path" : "ChargeItemDefinition.applicability.language",
      "short" : "Linguagem",
      "definition" : "Linguagem da expressão.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.applicability.expression",
      "path" : "ChargeItemDefinition.applicability.expression",
      "short" : "Expressão",
      "definition" : "Expressão que avalia a condição.",
      "comment" : "FHIRPath avaliado sobre o Claim de produção (ProducaoSUS).",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup",
      "path" : "ChargeItemDefinition.propertyGroup",
      "short" : "Grupo de preço",
      "definition" : "Componentes de preço e suas condições.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.id",
      "path" : "ChargeItemDefinition.propertyGroup.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.extension",
      "path" : "ChargeItemDefinition.propertyGroup.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.modifierExtension",
      "path" : "ChargeItemDefinition.propertyGroup.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.applicability",
      "path" : "ChargeItemDefinition.propertyGroup.applicability",
      "short" : "Condições do grupo",
      "definition" : "Condições do grupo de preço."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent",
      "short" : "Componente de preço",
      "definition" : "Valor base, acréscimo, desconto ou tributo.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.id",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.extension",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.modifierExtension",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.type",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.type",
      "short" : "Tipo de componente",
      "definition" : "base, surcharge, deduction, discount, tax ou informational.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.code",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.code",
      "short" : "Código do componente",
      "definition" : "Código do componente.",
      "mustSupport" : true
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.factor",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.factor",
      "short" : "Fator",
      "definition" : "Fator aplicado."
    },
    {
      "id" : "ChargeItemDefinition.propertyGroup.priceComponent.amount",
      "path" : "ChargeItemDefinition.propertyGroup.priceComponent.amount",
      "short" : "Valor",
      "definition" : "Valor monetário.",
      "comment" : "Valor SIGTAP da competência. A fonte de verdade do valor é o SIGTAP; este elemento é referência para cálculo e auditoria.",
      "mustSupport" : true
    }]
  }
}

```
