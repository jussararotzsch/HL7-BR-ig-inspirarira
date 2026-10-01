# F1a. Internação na origem, encerrada por transferência - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1a. Internação na origem, encerrada por transferência**

## Example Encounter: F1a. Internação na origem, encerrada por transferência

Perfil: [Internação Regulada](StructureDefinition-internacao-regulada.md)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**priority**: Urgência

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

**period**: 2026-10-01 06:00:00-0300 --> 2026-10-01 15:40:00-0300

### Hospitalizations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **AdmitSource** | **Destination** | **DischargeDisposition** |
| * | Demanda espontânea | [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md) | Transferência |

### Locations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Location** | **Status** | **Period** |
| * | [Location Enfermaria, leito 07](Location-leito-origem-01.md) | Completed | 2026-10-01 06:30:00-0300 --> 2026-10-01 15:40:00-0300 |

**serviceProvider**: [Organization Hospital Exemplo](Organization-org-executante.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-origem-enfermaria",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"]
  },
  "status" : "finished",
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
    "start" : "2026-10-01T06:00:00-03:00",
    "end" : "2026-10-01T15:40:00-03:00"
  },
  "hospitalization" : {
    "admitSource" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRProcedencia",
        "code" : "09",
        "display" : "Demanda espontânea"
      }]
    },
    "destination" : {
      "reference" : "Organization/org-hospital-destino"
    },
    "dischargeDisposition" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRMotivoDesfecho",
        "code" : "09",
        "display" : "Transferência"
      }]
    }
  },
  "location" : [{
    "location" : {
      "reference" : "Location/leito-origem-01"
    },
    "status" : "completed",
    "period" : {
      "start" : "2026-10-01T06:30:00-03:00",
      "end" : "2026-10-01T15:40:00-03:00"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-executante"
  }
}

```
