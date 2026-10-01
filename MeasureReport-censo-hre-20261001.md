# F5. Censo do Hospital Regional Exemplo - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F5. Censo do Hospital Regional Exemplo**

## Example MeasureReport: F5. Censo do Hospital Regional Exemplo

Perfil: [Censo de Leitos](StructureDefinition-censo-leitos.md)

**status**: Complete

**type**: Summary

**measure**: [Censo de leitos](Measure-censo-leitos.md) versão: 0.1.0

**date**: 2026-10-01 18:00:00-0300

**reporter**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)

**period**: 2026-10-01 18:00:00-0300 --> 2026-10-01 18:00:00-0300

> **group**
> **population****code**: existentes**count**: 3

> **population****code**: ocupados**count**: 1

> **population****code**: higienizacao**count**: 1

> **population****code**: reservados**count**: 1

> **population****code**: livres**count**: 0

> **stratifier****code**: Especialidade de leito (CNES)
> **stratum****value**: UTI ADULTO - TIPO II
> **population****code**: existentes**count**: 2

> **population****code**: ocupados**count**: 1

> **population****code**: higienizacao**count**: 1

> **stratum****value**: CLINICA GERAL
> **population****code**: existentes**count**: 1

> **population****code**: reservados**count**: 1





## Resource Content

```json
{
  "resourceType" : "MeasureReport",
  "id" : "censo-hre-20261001",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/censo-leitos"]
  },
  "status" : "complete",
  "type" : "summary",
  "measure" : "http://fhir.hsl.org.br/ig/inspirarira/Measure/censo-leitos|0.1.0",
  "date" : "2026-10-01T18:00:00-03:00",
  "reporter" : {
    "reference" : "Organization/org-hospital-destino"
  },
  "period" : {
    "start" : "2026-10-01T18:00:00-03:00",
    "end" : "2026-10-01T18:00:00-03:00"
  },
  "group" : [{
    "population" : [{
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
          "code" : "existentes"
        }]
      },
      "count" : 3
    },
    {
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
          "code" : "ocupados"
        }]
      },
      "count" : 1
    },
    {
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
          "code" : "higienizacao"
        }]
      },
      "count" : 1
    },
    {
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
          "code" : "reservados"
        }]
      },
      "count" : 1
    },
    {
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
          "code" : "livres"
        }]
      },
      "count" : 0
    }],
    "stratifier" : [{
      "code" : [{
        "text" : "Especialidade de leito (CNES)"
      }],
      "stratum" : [{
        "value" : {
          "coding" : [{
            "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
            "code" : "75",
            "display" : "UTI ADULTO - TIPO II"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
              "code" : "existentes"
            }]
          },
          "count" : 2
        },
        {
          "code" : {
            "coding" : [{
              "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
              "code" : "ocupados"
            }]
          },
          "count" : 1
        },
        {
          "code" : {
            "coding" : [{
              "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
              "code" : "higienizacao"
            }]
          },
          "count" : 1
        }]
      },
      {
        "value" : {
          "coding" : [{
            "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
            "code" : "33",
            "display" : "CLINICA GERAL"
          }]
        },
        "population" : [{
          "code" : {
            "coding" : [{
              "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
              "code" : "existentes"
            }]
          },
          "count" : 1
        },
        {
          "code" : {
            "coding" : [{
              "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos",
              "code" : "reservados"
            }]
          },
          "count" : 1
        }]
      }]
    }]
  }]
}

```
