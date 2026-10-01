# B8. Produção da APAC - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B8. Produção da APAC**

## Example Claim: B8. Produção da APAC

Perfil: [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/producao`/APAC-PROD-202610-0042

**status**: Active

**type**: Institutional

**subType**: apac

**use**: Claim

**patient**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**billablePeriod**: 2026-10-01 --> 2026-10-31

**created**: 2026-11-03 08:00:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**provider**: [Organization Hospital Exemplo](Organization-org-executante.md)

**priority**: Normal

### Relateds

| | |
| :--- | :--- |
| - | **Claim** |
| * | [Claim: identifier = http://hospital-exemplo.org.br/fhir/sid/laudo-apac#LAUDO-2026-7781; status = active; type = Institutional; subType = apac; use = preauthorization; created = 2026-10-08 09:00:00-0300; priority = Normal](Claim-claim-apac-hemodialise.md) |

**referral**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** |
| * | 1 | Doença renal em estádio final |

### Insurances

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** | **PreAuthRef** |
| * | 1 | true | [Coverage: status = active; type = ](Coverage-coverage-sus-arranjo-publico.md) | 3526100000001 |

### Items

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **ProductOrService** | **Serviced[x]** | **Quantity** | **Encounter** |
| * | 1 | Hemodiálise (máximo 3 sessões por semana) | 2026-10-13 | 1 | [Encounter: status = finished; class = ambulatory (ActCode#AMB); priority = Eletivo; period = 2026-10-13 07:05:00-0300 --> 2026-10-13 11:10:00-0300](Encounter-enc-hemodialise.md) |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "producao-apac-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/producao",
    "value" : "APAC-PROD-202610-0042"
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
      "code" : "apac"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/paciente-maria"
  },
  "billablePeriod" : {
    "start" : "2026-10-01",
    "end" : "2026-10-31"
  },
  "created" : "2026-11-03T08:00:00-03:00",
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
  "related" : [{
    "claim" : {
      "reference" : "Claim/claim-apac-hemodialise"
    }
  }],
  "referral" : {
    "reference" : "ServiceRequest/sr-hemodialise"
  },
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
        "code" : "N18.0",
        "display" : "Doença renal em estádio final"
      }]
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/coverage-sus-arranjo-publico"
    },
    "preAuthRef" : ["3526100000001"]
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
        "code" : "0305010107",
        "display" : "Hemodiálise (máximo 3 sessões por semana)"
      }]
    },
    "servicedDate" : "2026-10-13",
    "quantity" : {
      "value" : 1
    },
    "encounter" : [{
      "reference" : "Encounter/enc-hemodialise"
    }]
  }]
}

```
