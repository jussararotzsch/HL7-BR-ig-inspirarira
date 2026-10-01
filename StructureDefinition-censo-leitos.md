# Censo de Leitos - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Censo de Leitos**

## Resource Profile: Censo de Leitos ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/censo-leitos | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:CensoLeitos |

 
Situação dos leitos de um estabelecimento num instante, estratificada por especialidade de leito do CNES. Calculado a partir dos LeitoRegulado e das InternacaoRegulada. 

**Usos:**

* Exemplos para este Perfil: [MeasureReport/censo-hre-20261001](MeasureReport-censo-hre-20261001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-censo-leitos.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-censo-leitos.csv), [Excel](StructureDefinition-censo-leitos.xlsx), [Schematron](StructureDefinition-censo-leitos.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "censo-leitos",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/censo-leitos",
  "version" : "0.1.0",
  "name" : "CensoLeitos",
  "title" : "Censo de Leitos",
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
  "description" : "Situação dos leitos de um estabelecimento num instante, estratificada por especialidade de leito do CNES. Calculado a partir dos LeitoRegulado e das InternacaoRegulada.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  "type" : "MeasureReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MeasureReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MeasureReport",
      "path" : "MeasureReport",
      "short" : "Censo de Leitos",
      "definition" : "Situação dos leitos de um estabelecimento num instante, estratificada por especialidade de leito do CNES. Calculado a partir dos LeitoRegulado e das InternacaoRegulada."
    },
    {
      "id" : "MeasureReport.id",
      "path" : "MeasureReport.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.meta",
      "path" : "MeasureReport.meta",
      "short" : "Metadados do recurso",
      "definition" : "Metadados mantidos pela infraestrutura: versão, data de atualização, perfis e etiquetas."
    },
    {
      "id" : "MeasureReport.implicitRules",
      "path" : "MeasureReport.implicitRules",
      "short" : "Regras sob as quais o conteúdo foi criado",
      "definition" : "Referência ao conjunto de regras usadas na criação do recurso."
    },
    {
      "id" : "MeasureReport.language",
      "path" : "MeasureReport.language",
      "short" : "Idioma do conteúdo",
      "definition" : "Idioma em que o recurso foi escrito."
    },
    {
      "id" : "MeasureReport.text",
      "path" : "MeasureReport.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "MeasureReport.contained",
      "path" : "MeasureReport.contained",
      "short" : "Recursos contidos",
      "definition" : "Recursos inline sem existência independente fora deste recurso."
    },
    {
      "id" : "MeasureReport.extension",
      "path" : "MeasureReport.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.modifierExtension",
      "path" : "MeasureReport.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.identifier",
      "path" : "MeasureReport.identifier",
      "short" : "Identificador do relatório",
      "definition" : "Identificador de negócio."
    },
    {
      "id" : "MeasureReport.status",
      "path" : "MeasureReport.status",
      "short" : "Situação",
      "definition" : "complete, pending ou error.",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.type",
      "path" : "MeasureReport.type",
      "short" : "Tipo de relatório",
      "definition" : "individual, subject-list, summary ou data-collection.",
      "patternCode" : "summary"
    },
    {
      "id" : "MeasureReport.measure",
      "path" : "MeasureReport.measure",
      "short" : "Medida",
      "definition" : "Medida calculada.",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.subject",
      "path" : "MeasureReport.subject",
      "comment" : "Não usado: em R4 MeasureReport.subject não aceita Organization. O estabelecimento recenseado é o reporter.",
      "max" : "0"
    },
    {
      "id" : "MeasureReport.date",
      "path" : "MeasureReport.date",
      "short" : "Data de geração",
      "definition" : "Quando o relatório foi gerado.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.reporter",
      "path" : "MeasureReport.reporter",
      "short" : "Estabelecimento recenseado (CNES)",
      "definition" : "Quem informa os dados.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.period",
      "path" : "MeasureReport.period",
      "short" : "Período",
      "definition" : "Período a que os dados se referem.",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.improvementNotation",
      "path" : "MeasureReport.improvementNotation",
      "short" : "Sentido de melhora",
      "definition" : "Se valores maiores ou menores indicam melhora."
    },
    {
      "id" : "MeasureReport.group",
      "path" : "MeasureReport.group",
      "short" : "Grupo",
      "definition" : "Resultados por grupo.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.id",
      "path" : "MeasureReport.group.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.extension",
      "path" : "MeasureReport.group.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.modifierExtension",
      "path" : "MeasureReport.group.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.code",
      "path" : "MeasureReport.group.code",
      "short" : "Código do grupo",
      "definition" : "Identificação do grupo."
    },
    {
      "id" : "MeasureReport.group.population",
      "path" : "MeasureReport.group.population",
      "short" : "Contagens",
      "definition" : "Contagens do grupo.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population.id",
      "path" : "MeasureReport.group.population.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.population.extension",
      "path" : "MeasureReport.group.population.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.population.modifierExtension",
      "path" : "MeasureReport.group.population.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.population.code",
      "path" : "MeasureReport.group.population.code",
      "short" : "Tipo de contagem",
      "definition" : "O que está sendo contado.",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRPopulacaoCensoLeitos"
      }
    },
    {
      "id" : "MeasureReport.group.population.count",
      "path" : "MeasureReport.group.population.count",
      "short" : "Quantidade",
      "definition" : "Valor da contagem.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.population.subjectResults",
      "path" : "MeasureReport.group.population.subjectResults",
      "short" : "Lista de sujeitos",
      "definition" : "Sujeitos incluídos na contagem."
    },
    {
      "id" : "MeasureReport.group.measureScore",
      "path" : "MeasureReport.group.measureScore",
      "short" : "Escore",
      "definition" : "Valor calculado da medida."
    },
    {
      "id" : "MeasureReport.group.stratifier",
      "path" : "MeasureReport.group.stratifier",
      "short" : "Estratificação",
      "definition" : "Resultados estratificados.",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.id",
      "path" : "MeasureReport.group.stratifier.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.stratifier.extension",
      "path" : "MeasureReport.group.stratifier.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.stratifier.modifierExtension",
      "path" : "MeasureReport.group.stratifier.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.stratifier.code",
      "path" : "MeasureReport.group.stratifier.code",
      "short" : "Critério de estratificação",
      "definition" : "Critério usado.",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum",
      "path" : "MeasureReport.group.stratifier.stratum",
      "short" : "Estrato",
      "definition" : "Resultado de um estrato."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.id",
      "path" : "MeasureReport.group.stratifier.stratum.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.extension",
      "path" : "MeasureReport.group.stratifier.stratum.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.modifierExtension",
      "path" : "MeasureReport.group.stratifier.stratum.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.value",
      "path" : "MeasureReport.group.stratifier.stratum.value",
      "short" : "Valor do estrato",
      "definition" : "Valor que define o estrato.",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BREspecialidadeLeito"
      }
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component",
      "path" : "MeasureReport.group.stratifier.stratum.component",
      "short" : "Componente do estrato",
      "definition" : "Componente do critério."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.id",
      "path" : "MeasureReport.group.stratifier.stratum.component.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.extension",
      "path" : "MeasureReport.group.stratifier.stratum.component.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.modifierExtension",
      "path" : "MeasureReport.group.stratifier.stratum.component.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.code",
      "path" : "MeasureReport.group.stratifier.stratum.component.code",
      "short" : "Código do componente",
      "definition" : "Componente."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.component.value",
      "path" : "MeasureReport.group.stratifier.stratum.component.value",
      "short" : "Valor do componente",
      "definition" : "Valor."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population",
      "path" : "MeasureReport.group.stratifier.stratum.population",
      "short" : "Contagens do estrato",
      "definition" : "Contagens no estrato."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.id",
      "path" : "MeasureReport.group.stratifier.stratum.population.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.extension",
      "path" : "MeasureReport.group.stratifier.stratum.population.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.modifierExtension",
      "path" : "MeasureReport.group.stratifier.stratum.population.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.code",
      "path" : "MeasureReport.group.stratifier.stratum.population.code",
      "short" : "Tipo de contagem",
      "definition" : "O que está sendo contado.",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRPopulacaoCensoLeitos"
      }
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.count",
      "path" : "MeasureReport.group.stratifier.stratum.population.count",
      "short" : "Quantidade",
      "definition" : "Valor da contagem.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.population.subjectResults",
      "path" : "MeasureReport.group.stratifier.stratum.population.subjectResults",
      "short" : "Lista de sujeitos",
      "definition" : "Sujeitos do estrato."
    },
    {
      "id" : "MeasureReport.group.stratifier.stratum.measureScore",
      "path" : "MeasureReport.group.stratifier.stratum.measureScore",
      "short" : "Escore do estrato",
      "definition" : "Valor calculado no estrato."
    },
    {
      "id" : "MeasureReport.evaluatedResource",
      "path" : "MeasureReport.evaluatedResource",
      "short" : "Recursos avaliados",
      "definition" : "Recursos usados no cálculo."
    }]
  }
}

```
