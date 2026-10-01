# E2. Regra de reembolso da OCI de insuficiência cardíaca - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **E2. Regra de reembolso da OCI de insuficiência cardíaca**

## Example ChargeItemDefinition: E2. Regra de reembolso da OCI de insuficiência cardíaca

| |
| :--- |
| Draft as of 2026-10-01 |

Perfil: [Regra de Reembolso de OCI](StructureDefinition-regra-reembolso-oci.md)

**url**: [ChargeItemDefinition Reembolso da OCI Investigação diagnóstica de insuficiência cardíaca](ChargeItemDefinition-regra-reembolso-oci-ic.md)

**version**: 0.1.0

**title**: Reembolso da OCI Investigação diagnóstica de insuficiência cardíaca

**status**: Draft

**experimental**: true

**date**: 2026-10-01 16:52:20-0300

**publisher**: Hospital Sírio-Libanês

**contact**: Hospital Sírio-Libanês: [https://www.hospitalsiriolibanes.org.br](https://www.hospitalsiriolibanes.org.br)

**jurisdiction**: Brazil

**code**: OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA

> **applicability****description**: Todo componente registrado pertence à composição BRTabelaSUSOCI-IC.**language**: text/fhirpath**expression**: Claim.item.detail.productOrService.all(memberOf('https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUSOCI-IC'))

> **applicability****description**: Consulta especializada presencial ou teleconsulta realizada.**language**: text/fhirpath**expression**: Claim.item.detail.productOrService.coding.where(code = '0301010072' or code = '0301010307').exists()

> **applicability****description**: Produção vinculada a requisição regulada e ao cuidado executado.**language**: text/fhirpath**expression**: Claim.referral.exists() and Claim.item.encounter.exists()

> **propertyGroup**

### PriceComponents

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Code** |
| * | base price | OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA |




## Resource Content

```json
{
  "resourceType" : "ChargeItemDefinition",
  "id" : "regra-reembolso-oci-ic",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci"]
  },
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/ChargeItemDefinition/regra-reembolso-oci-ic",
  "version" : "0.1.0",
  "title" : "Reembolso da OCI Investigação diagnóstica de insuficiência cardíaca",
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
      "code" : "0902010069",
      "display" : "OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA"
    }]
  },
  "applicability" : [{
    "description" : "Todo componente registrado pertence à composição BRTabelaSUSOCI-IC.",
    "language" : "text/fhirpath",
    "expression" : "Claim.item.detail.productOrService.all(memberOf('https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUSOCI-IC'))"
  },
  {
    "description" : "Consulta especializada presencial ou teleconsulta realizada.",
    "language" : "text/fhirpath",
    "expression" : "Claim.item.detail.productOrService.coding.where(code = '0301010072' or code = '0301010307').exists()"
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
          "code" : "0902010069",
          "display" : "OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA"
        }]
      }
    }]
  }]
}

```
