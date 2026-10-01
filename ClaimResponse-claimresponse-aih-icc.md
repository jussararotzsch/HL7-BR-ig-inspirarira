# F1g. AIH emitida - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1g. AIH emitida**

## Example ClaimResponse: F1g. AIH emitida

Perfil: [Resposta de Autorização SUS (APAC/AIH)](StructureDefinition-resposta-autorizacao-sus.md)

**identifier**: `http://ses-exemplo.saude.sp.gov.br/fhir/sid/aih`/3526200000091

**status**: Active

**type**: Institutional

**subType**: aih

**use**: Preauthorization

**patient**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**created**: 2026-10-01 18:20:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**requestor**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)

**request**: [Claim: identifier = http://hre.exemplo.gov.br/fhir/sid/laudo-aih#LAUDO-AIH-2026-3310; status = active; type = Institutional; subType = aih; use = preauthorization; created = 2026-10-01 17:00:00-0300; priority = Immediate](Claim-claim-aih-icc.md)

**outcome**: Processing Complete

**disposition**: AIH autorizada

**preAuthRef**: 3526200000091

**preAuthPeriod**: 2026-10-01 --> 2026-10-31



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "claimresponse-aih-icc",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"]
  },
  "identifier" : [{
    "system" : "http://ses-exemplo.saude.sp.gov.br/fhir/sid/aih",
    "value" : "3526200000091"
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
  "created" : "2026-10-01T18:20:00-03:00",
  "insurer" : {
    "reference" : "Organization/org-gestor-ses"
  },
  "requestor" : {
    "reference" : "Organization/org-hospital-destino"
  },
  "request" : {
    "reference" : "Claim/claim-aih-icc"
  },
  "outcome" : "complete",
  "disposition" : "AIH autorizada",
  "preAuthRef" : "3526200000091",
  "preAuthPeriod" : {
    "start" : "2026-10-01",
    "end" : "2026-10-31"
  }
}

```
