# B3. Solicitação de APAC - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B3. Solicitação de APAC**

## Example Claim: B3. Solicitação de APAC

Perfil: [Solicitação de Autorização SUS (APAC/AIH)](StructureDefinition-autorizacao-previa-sus.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/laudo-apac`/LAUDO-2026-7781

**status**: Active

**type**: Institutional

**subType**: apac

**use**: Preauthorization

**patient**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**created**: 2026-10-08 09:00:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**provider**: [Organization Hospital Exemplo](Organization-org-executante.md)

**priority**: Normal

**referral**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

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

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Sequence** | **ProductOrService** | **Serviced[x]** | **Quantity** |
| * | 1 | Hemodiálise (máximo 3 sessões por semana) | 2026-10-13 --> 2027-01-12 | 13 |



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "claim-apac-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/laudo-apac",
    "value" : "LAUDO-2026-7781"
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
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/paciente-maria"
  },
  "created" : "2026-10-08T09:00:00-03:00",
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
    }
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
    "servicedPeriod" : {
      "start" : "2026-10-13",
      "end" : "2027-01-12"
    },
    "quantity" : {
      "value" : 13
    }
  }]
}

```
