# Agendamento de Regulação Assistencial - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Agendamento de Regulação Assistencial**

## Resource Profile: Agendamento de Regulação Assistencial ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:AgendamentoRegulacao |

 
Agendamento resultante da regulação. Só DEVE ser criado quando houver proposta de data, local e serviço. Os estados booked, fulfilled, cancelled e noshow substituem os slices event:booked, event:attended, event:cancelled e event:absence do RIRA. 

**Usos:**

* Refere a este Perfil: [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md)
* Exemplos para este Perfil: [Appointment/appt-consulta-nefrologia-falta](Appointment-appt-consulta-nefrologia-falta.md), [Appointment/appt-consulta-nefrologia](Appointment-appt-consulta-nefrologia.md), [Appointment/appt-hemodialise](Appointment-appt-hemodialise.md) and [Appointment/appt-oci-mama](Appointment-appt-oci-mama.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-agendamento-regulacao.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-agendamento-regulacao.csv), [Excel](StructureDefinition-agendamento-regulacao.xlsx), [Schematron](StructureDefinition-agendamento-regulacao.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "agendamento-regulacao",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao",
  "version" : "0.1.0",
  "name" : "AgendamentoRegulacao",
  "title" : "Agendamento de Regulação Assistencial",
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
  "description" : "Agendamento resultante da regulação. Só DEVE ser criado quando houver proposta de data, local e serviço. Os estados booked, fulfilled, cancelled e noshow substituem os slices event:booked, event:attended, event:cancelled e event:absence do RIRA.",
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
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
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
  "type" : "Appointment",
  "baseDefinition" : "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment",
      "short" : "Agendamento de Regulação Assistencial",
      "definition" : "Agendamento resultante da regulação. Só DEVE ser criado quando houver proposta de data, local e serviço. Os estados booked, fulfilled, cancelled e noshow substituem os slices event:booked, event:attended, event:cancelled e event:absence do RIRA.",
      "constraint" : [{
        "key" : "ag-1",
        "severity" : "error",
        "human" : "O agendamento DEVE ter o paciente como participante.",
        "expression" : "participant.actor.where(reference.startsWith('Patient/')).exists()",
        "source" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"
      }]
    },
    {
      "id" : "Appointment.identifier",
      "path" : "Appointment.identifier",
      "comment" : "No RIRA era 0..0.",
      "min" : 1
    },
    {
      "id" : "Appointment.status",
      "path" : "Appointment.status",
      "comment" : "appointmentstatus padrão, herdado do BR-Core. O ValueSet próprio de status de agendamento do RIRA deixa de ser usado."
    },
    {
      "id" : "Appointment.cancelationReason",
      "path" : "Appointment.cancelationReason",
      "comment" : "No RIRA era 0..0.",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.serviceCategory",
      "path" : "Appointment.serviceCategory",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.serviceType",
      "path" : "Appointment.serviceType",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUS"
      }
    },
    {
      "id" : "Appointment.specialty",
      "path" : "Appointment.specialty",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.reasonReference",
      "path" : "Appointment.reasonReference",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.supportingInformation",
      "path" : "Appointment.supportingInformation",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resolve()"
        }],
        "description" : "Fatiado pelo tipo do recurso referenciado",
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Appointment.supportingInformation:regulador",
      "path" : "Appointment.supportingInformation",
      "sliceName" : "regulador",
      "short" : "Estabelecimento regulador",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.supportingInformation:autorizacao",
      "path" : "Appointment.supportingInformation",
      "sliceName" : "autorizacao",
      "short" : "Autorização APAC/AIH, quando exigida",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.start",
      "path" : "Appointment.start",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.end",
      "path" : "Appointment.end",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.slot",
      "path" : "Appointment.slot",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.created",
      "path" : "Appointment.created",
      "comment" : "Data de criação do registro, na semântica padrão do FHIR. NÃO representa a data da autorização: ela fica em RespostaAutorizacaoSUS.created e preAuthPeriod.start. O RIRA reinterpretava este elemento como 'Data da Autorização'."
    },
    {
      "id" : "Appointment.basedOn",
      "path" : "Appointment.basedOn",
      "comment" : "Elo estrutural com o pedido. Já existia no RIRA e passa a ser o vínculo principal.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant",
      "path" : "Appointment.participant",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.id",
      "path" : "Appointment.participant.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Appointment.participant.extension",
      "path" : "Appointment.participant.extension",
      "short" : "Extensões adicionais",
      "definition" : "Extensões que acrescentam informação não prevista no modelo base."
    },
    {
      "id" : "Appointment.participant.modifierExtension",
      "path" : "Appointment.participant.modifierExtension",
      "short" : "Extensões que não podem ser ignoradas",
      "definition" : "Extensões que alteram o significado do elemento e não podem ser ignoradas por quem não as reconhece."
    },
    {
      "id" : "Appointment.participant.actor",
      "path" : "Appointment.participant.actor",
      "mustSupport" : true
    },
    {
      "id" : "Appointment.participant.status",
      "path" : "Appointment.participant.status",
      "mustSupport" : true
    }]
  }
}

```
