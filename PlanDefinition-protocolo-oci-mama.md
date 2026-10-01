# D1. Protocolo da OCI de avaliação diagnóstica inicial de câncer de mama - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D1. Protocolo da OCI de avaliação diagnóstica inicial de câncer de mama**

## PlanDefinition: D1. Protocolo da OCI de avaliação diagnóstica inicial de câncer de mama (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:ProtocoloOCIMama |
| **Usage:**Clinical Focus: OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA | |

Perfil: [Protocolo de Oferta de Cuidados Integrados (OCI)](StructureDefinition-protocolo-oci.md)

**url**: [PlanDefinition OCI Avaliação diagnóstica inicial de câncer de mama](PlanDefinition-protocolo-oci-mama.md)

**version**: 0.1.0

**name**: ProtocoloOCIMama

**title**: OCI Avaliação diagnóstica inicial de câncer de mama

**type**: Order Set

**status**: Draft

**experimental**: true

**date**: 2026-10-01 16:52:20-0300

**publisher**: Hospital Sírio-Libanês

**contact**: Hospital Sírio-Libanês: [https://www.hospitalsiriolibanes.org.br](https://www.hospitalsiriolibanes.org.br)

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [UsageContextType: focus](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html#usage-context-type-focus)(Clinical Focus) | OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA |

**jurisdiction**: Brazil

### RelatedArtifacts

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Resource** |
| * | Depends On | [Reembolso da OCI Avaliação diagnóstica inicial de câncer de mama](ChargeItemDefinition-regra-reembolso-oci-mama.md) |

> **action****title**: Avaliação diagnóstica inicial de câncer de mama**timing**: Nenhum ecrã para Duration (value: 30; unit: dias; system: http://unitsofmeasure.org; code: d)

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Code** | **RequiredBehavior** |
| * | Consulta especializada | CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA | Must |
| * | Mamografia | MAMOGRAFIA | Must |
| * | Ultrassonografia mamária | ULTRASSONOGRAFIA MAMARIA BILATERAL | Could |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "protocolo-oci-mama",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci"]
  },
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-mama",
  "version" : "0.1.0",
  "name" : "ProtocoloOCIMama",
  "title" : "OCI Avaliação diagnóstica inicial de câncer de mama",
  "type" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/plan-definition-type",
      "code" : "order-set"
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
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "focus"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
        "code" : "0901010014",
        "display" : "OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA"
      }]
    }
  }],
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "relatedArtifact" : [{
    "type" : "depends-on",
    "resource" : "http://fhir.hsl.org.br/ig/inspirarira/ChargeItemDefinition/regra-reembolso-oci-mama"
  }],
  "action" : [{
    "title" : "Avaliação diagnóstica inicial de câncer de mama",
    "timingDuration" : {
      "value" : 30,
      "unit" : "dias",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    },
    "action" : [{
      "title" : "Consulta especializada",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0301010072",
          "display" : "CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA"
        }]
      }],
      "requiredBehavior" : "must"
    },
    {
      "title" : "Mamografia",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0204030030",
          "display" : "MAMOGRAFIA"
        }]
      }],
      "requiredBehavior" : "must"
    },
    {
      "title" : "Ultrassonografia mamária",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0205020097",
          "display" : "ULTRASSONOGRAFIA MAMARIA BILATERAL"
        }]
      }],
      "requiredBehavior" : "could"
    }]
  }]
}

```
