# E1. Protocolo da OCI de insuficiência cardíaca - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **E1. Protocolo da OCI de insuficiência cardíaca**

## PlanDefinition: E1. Protocolo da OCI de insuficiência cardíaca (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-ic | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:ProtocoloOCIIC |
| **Usage:**Clinical Focus: OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA | |

Perfil: [Protocolo de Oferta de Cuidados Integrados (OCI)](StructureDefinition-protocolo-oci.md)

**url**: [PlanDefinition OCI Avaliação diagnóstica de insuficiência cardíaca](PlanDefinition-protocolo-oci-ic.md)

**version**: 0.1.0

**name**: ProtocoloOCIIC

**title**: OCI Avaliação diagnóstica de insuficiência cardíaca

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
| * | [UsageContextType: focus](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html#usage-context-type-focus)(Clinical Focus) | OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA |

**jurisdiction**: Brazil

### RelatedArtifacts

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Resource** |
| * | Depends On | [Reembolso da OCI Investigação diagnóstica de insuficiência cardíaca](ChargeItemDefinition-regra-reembolso-oci-ic.md) |
| * | Composed Of | [https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUSOCI-IC](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUSOCI-IC) |

> **action****title**: Investigação diagnóstica de insuficiência cardíaca**timing**: Nenhum ecrã para Duration (value: 60; unit: dias; system: http://unitsofmeasure.org; code: d)

### Actions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Title** | **Code** | **RequiredBehavior** |
| * | Hemograma completo | HEMOGRAMA COMPLETO | Could |
| * | Dosagem de creatinina | DOSAGEM DE CREATININA | Could |
| * | Dosagem de sodio | DOSAGEM DE SODIO | Could |
| * | Ecocardiografia transesofagica | ECOCARDIOGRAFIA TRANSESOFAGICA | Could |
| * | Consulta medica em atenção especializada | CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA | Could |
| * | Eletrocardiograma | ELETROCARDIOGRAMA | Could |
| * | Teleconsulta médica na atenção especializada | TELECONSULTA MÉDICA NA ATENÇÃO ESPECIALIZADA | Could |
| * | Teste de esforço / teste ergometrico | TESTE DE ESFORÇO / TESTE ERGOMETRICO | Could |
| * | Monitoramento pelo sistema holter 24 hs (3 canais) | MONITORAMENTO PELO SISTEMA HOLTER 24 HS (3 CANAIS) | Could |
| * | Dosagem de peptídeos natriuréticos tipo b (bnp e nt-probnp) | DOSAGEM DE PEPTÍDEOS NATRIURÉTICOS TIPO B (BNP E NT-PROBNP) | Could |
| * | Ecocardiografia de estresse | ECOCARDIOGRAFIA DE ESTRESSE | Could |
| * | Cintilografia de miocardio para localizacao de necrose (minimo 3 projecoes ) | CINTILOGRAFIA DE MIOCARDIO PARA LOCALIZACAO DE NECROSE (MINIMO 3 PROJECOES ) | Could |




## Resource Content

```json
{
  "resourceType" : "PlanDefinition",
  "id" : "protocolo-oci-ic",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci"]
  },
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/PlanDefinition/protocolo-oci-ic",
  "version" : "0.1.0",
  "name" : "ProtocoloOCIIC",
  "title" : "OCI Avaliação diagnóstica de insuficiência cardíaca",
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
        "code" : "0902010069",
        "display" : "OCI AVALIAÇÃO DIAGNÓSTICA - INSUFICIÊNCIA CARDÍACA"
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
    "resource" : "http://fhir.hsl.org.br/ig/inspirarira/ChargeItemDefinition/regra-reembolso-oci-ic"
  },
  {
    "type" : "composed-of",
    "resource" : "https://terminologia.saude.gov.br/fhir/ValueSet/BRTabelaSUSOCI-IC"
  }],
  "action" : [{
    "title" : "Investigação diagnóstica de insuficiência cardíaca",
    "timingDuration" : {
      "value" : 60,
      "unit" : "dias",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    },
    "action" : [{
      "title" : "Hemograma completo",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0202020380",
          "display" : "HEMOGRAMA COMPLETO"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Dosagem de creatinina",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0202010317",
          "display" : "DOSAGEM DE CREATININA"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Dosagem de sodio",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0202010635",
          "display" : "DOSAGEM DE SODIO"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Ecocardiografia transesofagica",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0205010024",
          "display" : "ECOCARDIOGRAFIA TRANSESOFAGICA"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Consulta medica em atenção especializada",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0301010072",
          "display" : "CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Eletrocardiograma",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0211020036",
          "display" : "ELETROCARDIOGRAMA"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Teleconsulta médica na atenção especializada",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0301010307",
          "display" : "TELECONSULTA MÉDICA NA ATENÇÃO ESPECIALIZADA"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Teste de esforço / teste ergometrico",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0211020060",
          "display" : "TESTE DE ESFORÇO / TESTE ERGOMETRICO"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Monitoramento pelo sistema holter 24 hs (3 canais)",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0211020044",
          "display" : "MONITORAMENTO PELO SISTEMA HOLTER 24 HS (3 CANAIS)"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Dosagem de peptídeos natriuréticos tipo b (bnp e nt-probnp)",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0202010791",
          "display" : "DOSAGEM DE PEPTÍDEOS NATRIURÉTICOS TIPO B (BNP E NT-PROBNP)"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Ecocardiografia de estresse",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0205010016",
          "display" : "ECOCARDIOGRAFIA DE ESTRESSE"
        }]
      }],
      "requiredBehavior" : "could"
    },
    {
      "title" : "Cintilografia de miocardio para localizacao de necrose (minimo 3 projecoes )",
      "code" : [{
        "coding" : [{
          "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTabelaSUS",
          "code" : "0208010041",
          "display" : "CINTILOGRAFIA DE MIOCARDIO PARA LOCALIZACAO DE NECROSE (MINIMO 3 PROJECOES )"
        }]
      }],
      "requiredBehavior" : "could"
    }]
  }]
}

```
