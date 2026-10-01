# B4. APAC emitida - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B4. APAC emitida**

## Example ClaimResponse: B4. APAC emitida

Perfil: [Resposta de Autorização SUS (APAC/AIH)](StructureDefinition-resposta-autorizacao-sus.md)

**identifier**: `http://ses-exemplo.saude.sp.gov.br/fhir/sid/apac`/3526100000001

**status**: Active

**type**: Institutional

**subType**: apac

**use**: Preauthorization

**patient**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**created**: 2026-10-09 15:30:00-0300

**insurer**: [Organization Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md)

**requestor**: [Organization Hospital Exemplo](Organization-org-executante.md)

**request**: [Claim: identifier = http://hospital-exemplo.org.br/fhir/sid/laudo-apac#LAUDO-2026-7781; status = active; type = Institutional; subType = apac; use = preauthorization; created = 2026-10-08 09:00:00-0300; priority = Normal](Claim-claim-apac-hemodialise.md)

**outcome**: Processing Complete

**disposition**: APAC autorizada

**preAuthRef**: 3526100000001

**preAuthPeriod**: 2026-10-13 --> 2027-01-12



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "claimresponse-apac-hemodialise",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"]
  },
  "identifier" : [{
    "system" : "http://ses-exemplo.saude.sp.gov.br/fhir/sid/apac",
    "value" : "3526100000001"
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
  "created" : "2026-10-09T15:30:00-03:00",
  "insurer" : {
    "reference" : "Organization/org-gestor-ses"
  },
  "requestor" : {
    "reference" : "Organization/org-executante"
  },
  "request" : {
    "reference" : "Claim/claim-apac-hemodialise"
  },
  "outcome" : "complete",
  "disposition" : "APAC autorizada",
  "preAuthRef" : "3526100000001",
  "preAuthPeriod" : {
    "start" : "2026-10-13",
    "end" : "2027-01-12"
  }
}

```
