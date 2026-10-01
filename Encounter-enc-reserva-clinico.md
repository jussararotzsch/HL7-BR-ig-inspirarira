# F2b. Reserva de leito clínico - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F2b. Reserva de leito clínico**

## Example Encounter: F2b. Reserva de leito clínico

Perfil: [Internação Regulada](StructureDefinition-internacao-regulada.md)

**status**: Planned

**class**: [ActCode: IMP](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**priority**: Eletivo

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-clinico.md)

**period**: 2026-10-02 08:00:00-0300 --> (em curso)

### Hospitalizations

| | | |
| :--- | :--- | :--- |
| - | **AdmitSource** | **DischargeDisposition** |
| * | Demanda referenciada | Permanência |

### Locations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Location** | **Status** | **Period** |
| * | [Location Clínica Médica, leito 01](Location-leito-clin-01.md) | Reserved | 2026-10-01 14:00:00-0300 --> 2026-10-02 10:00:00-0300 |

**serviceProvider**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-reserva-clinico",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"]
  },
  "status" : "planned",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "IMP"
  },
  "priority" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCaraterAtendimento",
      "code" : "01",
      "display" : "Eletivo"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-leito-clinico"
  }],
  "period" : {
    "start" : "2026-10-02T08:00:00-03:00"
  },
  "hospitalization" : {
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
      "reference" : "Location/leito-clin-01"
    },
    "status" : "reserved",
    "period" : {
      "start" : "2026-10-01T14:00:00-03:00",
      "end" : "2026-10-02T10:00:00-03:00"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-hospital-destino"
  }
}

```
