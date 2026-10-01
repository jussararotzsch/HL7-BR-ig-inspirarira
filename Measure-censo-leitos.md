# Medida do censo de leitos - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medida do censo de leitos**

## Measure: Medida do censo de leitos (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/Measure/censo-leitos | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:CensoLeitos |

 
Contagem de leitos por situação, estratificada por especialidade de leito do CNES. 

**url**: [Measure Censo de leitos](Measure-censo-leitos.md)

**version**: 0.1.0

**name**: CensoLeitos

**title**: Censo de leitos

**status**: Draft

**experimental**: true

**date**: 2026-10-01 16:52:20-0300

**publisher**: Hospital Sírio-Libanês

**contact**: Hospital Sírio-Libanês: [https://www.hospitalsiriolibanes.org.br](https://www.hospitalsiriolibanes.org.br)

**description**: 

Contagem de leitos por situação, estratificada por especialidade de leito do CNES.

**jurisdiction**: Brazil

**scoring**: Cohort

**type**: Structure



## Resource Content

```json
{
  "resourceType" : "Measure",
  "id" : "censo-leitos",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/Measure/censo-leitos",
  "version" : "0.1.0",
  "name" : "CensoLeitos",
  "title" : "Censo de leitos",
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
  "description" : "Contagem de leitos por situação, estratificada por especialidade de leito do CNES.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "scoring" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-scoring",
      "code" : "cohort"
    }]
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/measure-type",
      "code" : "structure"
    }]
  }]
}

```
