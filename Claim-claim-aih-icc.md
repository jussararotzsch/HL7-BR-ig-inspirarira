# F1f. Solicitação de AIH - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1f. Solicitação de AIH**

## Example Claim: F1f. Solicitação de AIH

Perfil: [Solicitação de Autorização SUS (APAC/AIH)](StructureDefinition-autorizacao-previa-sus.md)

**identifier**: `http://hre.exemplo.gov.br/fhir/sid/laudo-aih`/LAUDO-AIH-2026-3310

**status**: Active

**type**: Institutional

**subType**: aih

**use**: Preauthorization

**patient**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**created**: 2026-10-01 17:00:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**provider**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)

**priority**: Immediate

**referral**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** |
| * | 1 | Insuficiência cardíaca congestiva |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active; type = ](Coverage-coverage-sus-arranjo-publico.md) |

### Items

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **ProductOrService** | **Serviced[x]** |
| * | 1 | TRATAMENTO DE INSUFICIENCIA CARDIACA | 2026-10-01 |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "claim-aih-icc",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus"]
  },
  "identifier" : [{
    "system" : "http://hre.exemplo.gov.br/fhir/sid/laudo-aih",
    "value" : "LAUDO-AIH-2026-3310"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
      "code" : "institutional"
    }]
  },
  "subType" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRInstrumentoFinanceiroSUS",
      "code" : "aih"
    }]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/paciente-joao"
  },
  "created" : "2026-10-01T17:00:00-03:00",
  "insurer" : {
    "reference" : "Organization/org-gestor-ses"
  },
  "provider" : {
    "reference" : "Organization/org-hospital-destino"
  },
  "priority" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
      "code" : "stat"
    }]
  },
  "referral" : {
    "reference" : "ServiceRequest/sr-leito-uti"
  },
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
        "code" : "I50.0",
        "display" : "Insuficiência cardíaca congestiva"
      }]
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/coverage-sus-arranjo-publico"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
        "code" : "0303060212",
        "display" : "TRATAMENTO DE INSUFICIENCIA CARDIACA"
      }]
    },
    "servicedDate" : "2026-10-01"
  }]
}

```
