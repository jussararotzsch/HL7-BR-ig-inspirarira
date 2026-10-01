# Internação Regulada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Internação Regulada**

## Resource Profile: Internação Regulada ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:InternacaoRegulada |

 
Reserva e ocupação de leito resultante da regulação. Reserva = status planned com o leito em location.status reserved. Internação = in-progress com o leito active. Transferência interna (entre leitos do mesmo estabelecimento) é a troca de location dentro do mesmo Encounter. Transferência externa encerra este Encounter (desfecho Transferência) e abre outro no destino, regulado por nova Requisição. 

**Usos:**

* Refere a este Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [Encounter/enc-alta-uti](Encounter-enc-alta-uti.md), [Encounter/enc-destino-uti](Encounter-enc-destino-uti.md), [Encounter/enc-origem-enfermaria](Encounter-enc-origem-enfermaria.md) and [Encounter/enc-reserva-clinico](Encounter-enc-reserva-clinico.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-internacao-regulada.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-internacao-regulada.csv), [Excel](StructureDefinition-internacao-regulada.xlsx), [Schematron](StructureDefinition-internacao-regulada.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "internacao-regulada",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada",
  "version" : "0.1.0",
  "name" : "InternacaoRegulada",
  "title" : "Internação Regulada",
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
  "description" : "Reserva e ocupação de leito resultante da regulação. Reserva = status planned com o leito em location.status reserved. Internação = in-progress com o leito active. Transferência interna (entre leitos do mesmo estabelecimento) é a troca de location dentro do mesmo Encounter. Transferência externa encerra este Encounter (desfecho Transferência) e abre outro no destino, regulado por nova Requisição.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "short" : "Internação Regulada",
      "definition" : "Reserva e ocupação de leito resultante da regulação. Reserva = status planned com o leito em location.status reserved. Internação = in-progress com o leito active. Transferência interna (entre leitos do mesmo estabelecimento) é a troca de location dentro do mesmo Encounter. Transferência externa encerra este Encounter (desfecho Transferência) e abre outro no destino, regulado por nova Requisição.",
      "constraint" : [{
        "key" : "in-1",
        "severity" : "error",
        "human" : "Internação planejada (reserva) DEVE ter um leito com location.status = reserved.",
        "expression" : "status = 'planned' implies location.where(status = 'reserved').exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
      },
      {
        "key" : "in-2",
        "severity" : "error",
        "human" : "Internação em curso DEVE ter exatamente um leito ativo.",
        "expression" : "status = 'in-progress' implies location.where(status = 'active').count() = 1",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
      },
      {
        "key" : "in-3",
        "severity" : "error",
        "human" : "Internação encerrada DEVE informar o desfecho.",
        "expression" : "status = 'finished' implies hospitalization.dischargeDisposition.coding.exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
      }]
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "comment" : "planned (leito reservado), in-progress (internado), finished (alta, óbito, transferência), cancelled (reserva cancelada).",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.basedOn",
      "path" : "Encounter.basedOn",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.origin",
      "path" : "Encounter.hospitalization.origin",
      "comment" : "Na transferência externa, o estabelecimento de origem.",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.destination",
      "path" : "Encounter.hospitalization.destination",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "comment" : "BRMotivoDesfecho. Enquanto o paciente está internado, use 07 Permanência; o BR-Core exige o elemento mesmo antes da alta (ver débitos técnicos).",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location"]
      }]
    },
    {
      "id" : "Encounter.location.status",
      "path" : "Encounter.location.status",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.period",
      "path" : "Encounter.location.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.partOf",
      "path" : "Encounter.partOf",
      "mustSupport" : true
    }]
  }
}

```
