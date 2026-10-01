# F4. Internação encerrada com alta clínica - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F4. Internação encerrada com alta clínica**

## Example Encounter: F4. Internação encerrada com alta clínica

Perfil: [Internação Regulada](StructureDefinition-internacao-regulada.md)

**status**: Finished

**class**: [ActCode: IMP](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP) (inpatient encounter)

**priority**: Urgência

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-vaga-zero.md)

**period**: 2026-09-20 03:30:00-0300 --> 2026-09-28 11:00:00-0300

### Hospitalizations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Origin** | **AdmitSource** | **DischargeDisposition** |
| * | [Organization UPA 24h Exemplo](Organization-org-upa.md) | Demanda referenciada | Alta clínica |

### Locations

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Location** | **Status** | **Period** |
| * | [Location UTI Adulto, leito 02](Location-leito-uti-02.md) | Completed | 2026-09-20 03:30:00-0300 --> 2026-09-28 11:00:00-0300 |

**serviceProvider**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-alta-uti",
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
    "reference" : "ServiceRequest/sr-vaga-zero"
  }],
  "period" : {
    "start" : "2026-09-20T03:30:00-03:00",
    "end" : "2026-09-28T11:00:00-03:00"
  },
  "hospitalization" : {
    "origin" : {
      "reference" : "Organization/org-upa"
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
        "code" : "01",
        "display" : "Alta clínica"
      }]
    }
  },
  "location" : [{
    "location" : {
      "reference" : "Location/leito-uti-02"
    },
    "status" : "completed",
    "period" : {
      "start" : "2026-09-20T03:30:00-03:00",
      "end" : "2026-09-28T11:00:00-03:00"
    }
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-hospital-destino"
  }
}

```
