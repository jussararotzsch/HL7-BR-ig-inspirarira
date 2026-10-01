# A6. Produção em BPA-I - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A6. Produção em BPA-I**

## Example Claim: A6. Produção em BPA-I

Perfil: [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/producao`/BPAI-202609-000871

**status**: Active

**type**: Professional

**subType**: bpa-i

**use**: Claim

**patient**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**billablePeriod**: 2026-09-01 --> 2026-09-30

**created**: 2026-10-02 08:00:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**provider**: [Organization Hospital Exemplo](Organization-org-executante.md)

**priority**: Normal

**referral**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-nefrologia.md)

### Diagnoses

| | | |
| :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** |
| * | 1 | Doença renal em estádio final |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: status = active; type = ](Coverage-coverage-sus-arranjo-publico.md) |

### Items

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **ProductOrService** | **Serviced[x]** | **Quantity** | **Encounter** |
| * | 1 | Consulta médica em atenção especializada | 2026-09-15 | 1 | [Encounter: status = finished; class = ambulatory (ActCode#AMB); priority = Consulta agendada; period = 2026-09-15 10:05:00-0300 --> 2026-09-15 10:35:00-0300](Encounter-enc-consulta-nefrologia.md) |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "bpai-consulta-nefrologia",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/producao",
    "value" : "BPAI-202609-000871"
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
      "code" : "bpa-i"
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
  "created" : "2026-10-02T08:00:00-03:00",
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
    "reference" : "ServiceRequest/sr-consulta-nefrologia"
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
    }
  }],
  "item" : [{
    "sequence" : 1,
    "productOrService" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
        "code" : "0301010072",
        "display" : "Consulta médica em atenção especializada"
      }]
    },
    "servicedDate" : "2026-09-15",
    "quantity" : {
      "value" : 1
    },
    "encounter" : [{
      "reference" : "Encounter/enc-consulta-nefrologia"
    }]
  }]
}

```
