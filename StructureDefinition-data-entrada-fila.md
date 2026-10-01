# Data de Entrada na Fila - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Data de Entrada na Fila**

## Extension: Data de Entrada na Fila (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:DataEntradaFila |

Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa).

**Context of Use**

This extension may be used on the following element(s):

* Element ID Task

**Usage info**

**Usos:**

* Usa este Extensão: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Extensão: [Task/task-leito-clinico](Task-task-leito-clinico.md) and [Task/task-regulacao-consulta](Task-task-regulacao-consulta.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-data-entrada-fila.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-data-entrada-fila.csv), [Excel](StructureDefinition-data-entrada-fila.xlsx), [Schematron](StructureDefinition-data-entrada-fila.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "data-entrada-fila",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila",
  "version" : "0.1.0",
  "name" : "DataEntradaFila",
  "title" : "Data de Entrada na Fila",
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
  "description" : "Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa).",
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
      "short" : "Data de Entrada na Fila",
      "definition" : "Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa)."
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
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "short" : "Identificador da extensão",
      "definition" : "URL que identifica a extensão.",
      "fixedUri" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/data-entrada-fila"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Valor da extensão",
      "definition" : "Valor da extensão.",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
