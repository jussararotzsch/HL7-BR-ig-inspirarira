# D2. Regra de reembolso da OCI de câncer de mama - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D2. Regra de reembolso da OCI de câncer de mama**

## Example ChargeItemDefinition: D2. Regra de reembolso da OCI de câncer de mama

| |
| :--- |
| Draft as of 2026-10-01 |

Perfil: [Regra de Reembolso de OCI](StructureDefinition-regra-reembolso-oci.md)

**url**: [ChargeItemDefinition Reembolso da OCI Avaliação diagnóstica inicial de câncer de mama](ChargeItemDefinition-regra-reembolso-oci-mama.md)

**version**: 0.1.0

**title**: Reembolso da OCI Avaliação diagnóstica inicial de câncer de mama

**status**: Draft

**experimental**: true

**date**: 2026-10-01 16:52:20-0300

**publisher**: Hospital Sírio-Libanês

**contact**: Hospital Sírio-Libanês: [https://www.hospitalsiriolibanes.org.br](https://www.hospitalsiriolibanes.org.br)

**jurisdiction**: Brazil

**code**: OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA

> **applicability****description**: Procedimentos obrigatórios realizados: consulta especializada e mamografia.**language**: text/fhirpath**expression**: Claim.item.detail.productOrService.coding.where(code = '0301010072').exists() and Claim.item.detail.productOrService.coding.where(code = '0204030030').exists()

> **applicability****description**: OCI concluída no prazo: todos os atendimentos em até 30 dias do primeiro.**language**: text/fhirpath**expression**: Claim.item.servicedPeriod.exists() and (Claim.item.servicedPeriod.start + 30 days) >= Claim.item.servicedPeriod.end

> **applicability****description**: Produção vinculada a requisição regulada e ao cuidado executado.**language**: text/fhirpath**expression**: Claim.referral.exists() and Claim.item.encounter.exists()

> **propertyGroup**

### PriceComponents

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Code** |
| * | base price | OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA |




## Resource Content

```json
{
  "resourceType" : "ChargeItemDefinition",
  "id" : "regra-reembolso-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci"]
  },
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/ChargeItemDefinition/regra-reembolso-oci-mama",
  "version" : "0.1.0",
  "title" : "Reembolso da OCI Avaliação diagnóstica inicial de câncer de mama",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T16:52:20-03:00",
  "publisher" : "Hospital Sírio-Libanês",
  "contact" : [{
    "name" : "Hospital Sírio-Libanês",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hospitalsiriolibanes.org.br"
    }]
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
      "code" : "0901010014",
      "display" : "OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA"
    }]
  },
  "applicability" : [{
    "description" : "Procedimentos obrigatórios realizados: consulta especializada e mamografia.",
    "language" : "text/fhirpath",
    "expression" : "Claim.item.detail.productOrService.coding.where(code = '0301010072').exists() and Claim.item.detail.productOrService.coding.where(code = '0204030030').exists()"
  },
  {
    "description" : "OCI concluída no prazo: todos os atendimentos em até 30 dias do primeiro.",
    "language" : "text/fhirpath",
    "expression" : "Claim.item.servicedPeriod.exists() and (Claim.item.servicedPeriod.start + 30 days) >= Claim.item.servicedPeriod.end"
  },
  {
    "description" : "Produção vinculada a requisição regulada e ao cuidado executado.",
    "language" : "text/fhirpath",
    "expression" : "Claim.referral.exists() and Claim.item.encounter.exists()"
  }],
  "propertyGroup" : [{
    "priceComponent" : [{
      "type" : "base",
      "code" : {
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0901010014",
          "display" : "OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA"
        }]
      }
    }]
  }]
}

```
