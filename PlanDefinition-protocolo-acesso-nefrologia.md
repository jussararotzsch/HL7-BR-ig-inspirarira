# Protocolo de acesso à nefrologia (exemplo) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Protocolo de acesso à nefrologia (exemplo)**

## PlanDefinition: Protocolo de acesso à nefrologia (exemplo) (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-acesso-nefrologia | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:ProtocoloAcessoNefrologia |

**url**: [PlanDefinition Protocolo de acesso à nefrologia](PlanDefinition-protocolo-acesso-nefrologia.md)

**version**: 0.1.0

**name**: ProtocoloAcessoNefrologia

**title**: Protocolo de acesso à nefrologia

**type**: Clinical Protocol

**status**: Draft

**experimental**: true

**date**: 2026-10-01 16:52:20-0300

**publisher**: Hospital Sírio-Libanês

**contact**: Hospital Sírio-Libanês: [https://www.hospitalsiriolibanes.org.br](https://www.hospitalsiriolibanes.org.br)

**jurisdiction**: Brazil

### Actions

| | | |
| :--- | :--- | :--- |
| - | **Title** | **Description** |
| * | Qualificar e priorizar pedido de consulta em nefrologia | Exige TFG estimada e exame de urina recentes. Prioriza por estágio da DRC, risco da espera e fragilidade. |



## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "protocolo-acesso-nefrologia",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-acesso-nefrologia",
  "version" : "0.1.0",
  "name" : "ProtocoloAcessoNefrologia",
  "title" : "Protocolo de acesso à nefrologia",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "clinical-protocol"
    }]
  },
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
  "action" : [{
    "title" : "Qualificar e priorizar pedido de consulta em nefrologia",
    "description" : "Exige TFG estimada e exame de urina recentes. Prioriza por estágio da DRC, risco da espera e fragilidade."
  }]
}

```
