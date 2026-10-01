# D3. Pedido da OCI - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D3. Pedido da OCI**

## Example ServiceRequest: D3. Pedido da OCI

Perfil: [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md)

**identifier**: `http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao`/SOL-2026-000410

**instantiatesCanonical**: [OCI Avaliação diagnóstica inicial de câncer de mama](PlanDefinition-protocolo-oci-mama.md) versão: 0.1.0

**status**: Completed

**intent**: Order

**category**: OCI Oncologia

**priority**: Urgent

**code**: OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**authoredOn**: 2026-08-11 09:00:00-0300

**requester**: [Organization UBS Jardim Exemplo](Organization-org-ubs-solicitante.md)

**reasonCode**: Nódulo mamário não especificado



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "sr-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"]
  },
  "identifier" : [{
    "system" : "http://ubs-exemplo.saude.sp.gov.br/fhir/sid/solicitacao",
    "value" : "SOL-2026-000410"
  }],
  "instantiatesCanonical" : ["http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama|0.1.0"],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0901",
      "display" : "OCI Oncologia"
    }]
  }],
  "priority" : "urgent",
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0901010014",
      "display" : "OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "authoredOn" : "2026-08-11T09:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-ubs-solicitante"
  },
  "reasonCode" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "N63",
      "display" : "Nódulo mamário não especificado"
    }]
  }]
}

```
