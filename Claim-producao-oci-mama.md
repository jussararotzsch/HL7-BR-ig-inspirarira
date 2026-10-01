# D7. Produção da OCI - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D7. Produção da OCI**

## Example Claim: D7. Produção da OCI

Perfil: [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/producao`/OCI-PROD-202609-0007

**status**: Active

**type**: Professional

**subType**: apac

**use**: Claim

**patient**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**billablePeriod**: 2026-09-01 --> 2026-09-30

**created**: 2026-09-05 08:00:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**provider**: [Organization Hospital Exemplo](Organization-org-executante.md)

**priority**: Normal

**referral**: [ServiceRequest OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA](ServiceRequest-sr-oci-mama.md)

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** |
| * | 1 | Nódulo mamário não especificado |

### Insurances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** | **PreAuthRef** |
| * | 1 | true | [Coverage: status = active; type = ](Coverage-coverage-sus-arranjo-publico.md) | 3526100000410 |

> **item****sequence**: 1**productOrService**: OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA**serviced**: 2026-08-18 --> 2026-08-29**quantity**: 1**encounter**: [Encounter: status = finished; class = ambulatory (ActCode#AMB); priority = Consulta agendada; period = 2026-08-18 09:05:00-0300 --> 2026-08-18 09:40:00-0300](Encounter-enc-oci-mama.md)
> **detail****sequence**: 1**productOrService**: CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA

> **detail****sequence**: 2**productOrService**: MAMOGRAFIA

> **detail****sequence**: 3**productOrService**: ULTRASSONOGRAFIA MAMARIA BILATERAL



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "producao-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/producao",
    "value" : "OCI-PROD-202609-0007"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "professional"
    }]
  },
  "subType" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRInstrumentoFinanceiroSUS",
      "code" : "apac"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/paciente-maria"
  },
  "billablePeriod" : {
    "start" : "2026-09-01",
    "end" : "2026-09-30"
  },
  "created" : "2026-09-05T08:00:00-03:00",
  "insurer" : {
    "reference" : "Organization/org-gestor-ses"
  },
  "provider" : {
    "reference" : "Organization/org-executante"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "normal"
    }]
  },
  "referral" : {
    "reference" : "ServiceRequest/sr-oci-mama"
  },
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
        "code" : "N63",
        "display" : "Nódulo mamário não especificado"
      }]
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/coverage-sus-arranjo-publico"
    },
    "preAuthRef" : ["3526100000410"]
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
        "code" : "0901010014",
        "display" : "OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA"
      }]
    },
    "servicedPeriod" : {
      "start" : "2026-08-18",
      "end" : "2026-08-29"
    },
    "quantity" : {
      "value" : 1
    },
    "encounter" : [{
      "reference" : "Encounter/enc-oci-mama"
    }],
    "detail" : [{
      "sequence" : 1,
      "productOrService" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0301010072",
          "display" : "CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA"
        }]
      }
    },
    {
      "sequence" : 2,
      "productOrService" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0204030030",
          "display" : "MAMOGRAFIA"
        }]
      }
    },
    {
      "sequence" : 3,
      "productOrService" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0205020097",
          "display" : "ULTRASSONOGRAFIA MAMARIA BILATERAL"
        }]
      }
    }]
  }]
}

```
