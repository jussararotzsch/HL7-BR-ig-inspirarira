# Prioridade Regulatória - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prioridade Regulatória**

## Extension: Prioridade Regulatória (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/prioridade-regulatoria | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:PrioridadeRegulatoria |

Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade.

**Context of Use**

This extension may be used on the following element(s):

* Element ID Task

**Usage info**

**Usos:**

* Usa este Extensão: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Extensão: [Task/task-regulacao-consulta](Task-task-regulacao-consulta.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-prioridade-regulatoria.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prioridade-regulatoria.csv), [Excel](StructureDefinition-prioridade-regulatoria.xlsx), [Schematron](StructureDefinition-prioridade-regulatoria.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prioridade-regulatoria",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/prioridade-regulatoria",
  "version" : "0.1.0",
  "name" : "PrioridadeRegulatoria",
  "title" : "Prioridade Regulatória",
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
  "description" : "Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade.",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Task"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Prioridade Regulatória",
      "definition" : "Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade."
    },
    {
      "id" : "Extension.id",
      "path" : "Extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "short" : "Subextensão",
      "definition" : "Componente da extensão.",
      "min" : 1
    },
    {
      "id" : "Extension.extension:classe",
      "path" : "Extension.extension",
      "sliceName" : "classe",
      "short" : "Classe de prioridade do protocolo aplicado",
      "definition" : "Componente da extensão.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:classe.id",
      "path" : "Extension.extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension:classe.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:classe.url",
      "path" : "Extension.extension.url",
      "short" : "Identificador da subextensão",
      "definition" : "Nome do componente da extensão.",
      "fixedUri" : "classe"
    },
    {
      "id" : "Extension.extension:classe.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Valor da subextensão",
      "definition" : "Valor do componente da extensão.",
      "comment" : "Sem ValueSet nacional definido. Questão aberta para o GT (seção 20 do guia).",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.extension:escore",
      "path" : "Extension.extension",
      "sliceName" : "escore",
      "short" : "Escore calculado pelo protocolo",
      "definition" : "Componente da extensão.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:escore.id",
      "path" : "Extension.extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension:escore.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:escore.url",
      "path" : "Extension.extension.url",
      "short" : "Identificador da subextensão",
      "definition" : "Nome do componente da extensão.",
      "fixedUri" : "escore"
    },
    {
      "id" : "Extension.extension:escore.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Valor da subextensão",
      "definition" : "Valor do componente da extensão.",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "Extension.extension:fator",
      "path" : "Extension.extension",
      "sliceName" : "fator",
      "short" : "Fator que compôs a prioridade",
      "definition" : "Componente da extensão.",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:fator.id",
      "path" : "Extension.extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension:fator.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:fator.url",
      "path" : "Extension.extension.url",
      "short" : "Identificador da subextensão",
      "definition" : "Nome do componente da extensão.",
      "fixedUri" : "fator"
    },
    {
      "id" : "Extension.extension:fator.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Valor da subextensão",
      "definition" : "Valor do componente da extensão.",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRFatorPrioridadeRegulatoria"
      }
    },
    {
      "id" : "Extension.extension:justificativa",
      "path" : "Extension.extension",
      "sliceName" : "justificativa",
      "short" : "Justificativa explícita, obrigatória quando houver ajuste humano",
      "definition" : "Componente da extensão.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:justificativa.id",
      "path" : "Extension.extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension:justificativa.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:justificativa.url",
      "path" : "Extension.extension.url",
      "short" : "Identificador da subextensão",
      "definition" : "Nome do componente da extensão.",
      "fixedUri" : "justificativa"
    },
    {
      "id" : "Extension.extension:justificativa.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Valor da subextensão",
      "definition" : "Valor do componente da extensão.",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "short" : "Identificador da extensão",
      "definition" : "URL que identifica a extensão.",
      "fixedUri" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/prioridade-regulatoria"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
