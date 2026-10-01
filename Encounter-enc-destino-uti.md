# F1d. Internação na UTI de destino - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1d. Internação na UTI de destino**

## Example Encounter: F1d. Internação na UTI de destino

Perfil: [Internação Regulada](StructureDefinition-internacao-regulada.md)

**status**: In Progress

**class**: [ActCode: IMP](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**priority**: Urgência

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

**period**: 2026-10-01 16:10:00-0300 --> (em curso)

### Hospitalizations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Origin** | **AdmitSource** | **DischargeDisposition** |
| * | [Organization Hospital Exemplo](Organization-org-executante.md) | Demanda referenciada | Permanência |

### Locations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Location** | **Status** | **Period** |
| * | [Location UTI Adulto, leito 01](Location-leito-uti-01.md) | Active | 2026-10-01 16:10:00-0300 --> (em curso) |

**serviceProvider**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-destino-uti",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"]
  },
  "status" : "in-progress",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP"
  },
  "priority" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCaraterAtendimento",
      "code" : "02",
      "display" : "Urgência"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-joao"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-leito-uti"
  }],
  "period" : {
    "start" : "2026-10-01T16:10:00-03:00"
  },
  "hospitalization" : {
    "origin" : {
      "reference" : "Organization/org-executante"
    },
    "admitSource" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRProcedencia",
        "code" : "12",
        "display" : "Demanda referenciada"
      }]
    },
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMotivoDesfecho",
        "code" : "07",
        "display" : "Permanência"
      }]
    }
  },
  "location" : [{
    "location" : {
      "reference" : "Location/leito-uti-01"
    },
    "status" : "active",
    "period" : {
      "start" : "2026-10-01T16:10:00-03:00"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-hospital-destino"
  }
}

```
