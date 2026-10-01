# Leito Regulado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leito Regulado**

## Resource Profile: Leito Regulado ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:LeitoRegulado |

 
Leito hospitalar disponível à regulação. Tipo e especialidade seguem os domínios do CNES. A situação operacional (livre, ocupado, higienização, bloqueado) usa a tabela HL7 v2-0116, nativa de Location.operationalStatus. 

**Usos:**

* Refere a este Perfil: [Internação Regulada](StructureDefinition-internacao-regulada.md) and [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [Clínica Médica, leito 01](Location-leito-clin-01.md), [Enfermaria, leito 07](Location-leito-origem-01.md), [UTI Adulto, leito 01](Location-leito-uti-01.md) and [UTI Adulto, leito 02](Location-leito-uti-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-leito-regulado.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-leito-regulado.csv), [Excel](StructureDefinition-leito-regulado.xlsx), [Schematron](StructureDefinition-leito-regulado.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "leito-regulado",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado",
  "version" : "0.1.0",
  "name" : "LeitoRegulado",
  "title" : "Leito Regulado",
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
  "description" : "Leito hospitalar disponível à regulação. Tipo e especialidade seguem os domínios do CNES. A situação operacional (livre, ocupado, higienização, bloqueado) usa a tabela HL7 v2-0116, nativa de Location.operationalStatus.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location",
      "short" : "Leito Regulado",
      "definition" : "Leito hospitalar disponível à regulação. Tipo e especialidade seguem os domínios do CNES. A situação operacional (livre, ocupado, higienização, bloqueado) usa a tabela HL7 v2-0116, nativa de Location.operationalStatus."
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "comment" : "Identificador do leito no estabelecimento.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Location.status",
      "path" : "Location.status",
      "mustSupport" : true
    },
    {
      "id" : "Location.operationalStatus",
      "path" : "Location.operationalStatus",
      "comment" : "U livre, O ocupado, H higienização, C fechado, K contaminado, I isolado. Reserva não é status do leito: fica no Encounter (location.status = reserved).",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0116"
      }
    },
    {
      "id" : "Location.name",
      "path" : "Location.name",
      "mustSupport" : true
    },
    {
      "id" : "Location.mode",
      "path" : "Location.mode",
      "patternCode" : "instance"
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "coding.system"
        }],
        "description" : "Tipo e especialidade de leito do CNES",
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Location.type:tipoLeito",
      "path" : "Location.type",
      "sliceName" : "tipoLeito",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTipoLeito"
      }
    },
    {
      "id" : "Location.type:tipoLeito.id",
      "path" : "Location.type.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Location.type:tipoLeito.extension",
      "path" : "Location.type.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Location.type:tipoLeito.coding",
      "path" : "Location.type.coding",
      "short" : "Código em um sistema de codificação",
      "definition" : "Referência a um código de um sistema de codificação."
    },
    {
      "id" : "Location.type:tipoLeito.coding.id",
      "path" : "Location.type.coding.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Location.type:tipoLeito.coding.extension",
      "path" : "Location.type.coding.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Location.type:tipoLeito.coding.system",
      "path" : "Location.type.coding.system",
      "short" : "Sistema de codificação",
      "definition" : "URL do sistema de codificação.",
      "min" : 1,
      "patternUri" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoLeito"
    },
    {
      "id" : "Location.type:tipoLeito.coding.version",
      "path" : "Location.type.coding.version",
      "short" : "Versão",
      "definition" : "Versão de negócio do artefato."
    },
    {
      "id" : "Location.type:tipoLeito.coding.code",
      "path" : "Location.type.coding.code",
      "short" : "Código",
      "definition" : "Código que identifica o conceito."
    },
    {
      "id" : "Location.type:tipoLeito.coding.display",
      "path" : "Location.type.coding.display",
      "short" : "Descrição do código",
      "definition" : "Representação textual do código."
    },
    {
      "id" : "Location.type:tipoLeito.coding.userSelected",
      "path" : "Location.type.coding.userSelected",
      "short" : "Selecionado pelo usuário",
      "definition" : "Indica que o código foi escolhido diretamente pelo usuário."
    },
    {
      "id" : "Location.type:tipoLeito.text",
      "path" : "Location.type.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "Location.type:especialidadeLeito",
      "path" : "Location.type",
      "sliceName" : "especialidadeLeito",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BREspecialidadeLeito"
      }
    },
    {
      "id" : "Location.type:especialidadeLeito.id",
      "path" : "Location.type.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Location.type:especialidadeLeito.extension",
      "path" : "Location.type.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding",
      "path" : "Location.type.coding",
      "short" : "Código em um sistema de codificação",
      "definition" : "Referência a um código de um sistema de codificação."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.id",
      "path" : "Location.type.coding.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.extension",
      "path" : "Location.type.coding.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.system",
      "path" : "Location.type.coding.system",
      "short" : "Sistema de codificação",
      "definition" : "URL do sistema de codificação.",
      "min" : 1,
      "patternUri" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito"
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.version",
      "path" : "Location.type.coding.version",
      "short" : "Versão",
      "definition" : "Versão de negócio do artefato."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.code",
      "path" : "Location.type.coding.code",
      "short" : "Código",
      "definition" : "Código que identifica o conceito."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.display",
      "path" : "Location.type.coding.display",
      "short" : "Descrição do código",
      "definition" : "Representação textual do código."
    },
    {
      "id" : "Location.type:especialidadeLeito.coding.userSelected",
      "path" : "Location.type.coding.userSelected",
      "short" : "Selecionado pelo usuário",
      "definition" : "Indica que o código foi escolhido diretamente pelo usuário."
    },
    {
      "id" : "Location.type:especialidadeLeito.text",
      "path" : "Location.type.text",
      "short" : "Narrativa legível do recurso",
      "definition" : "Resumo textual do recurso, para leitura humana."
    },
    {
      "id" : "Location.physicalType",
      "path" : "Location.physicalType",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
          "code" : "bd"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "short" : "Estabelecimento (CNES)",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "short" : "Unidade ou ala",
      "mustSupport" : true
    }]
  }
}

```
