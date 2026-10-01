# Doença renal crônica - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Doença renal crônica**

## Example Condition: Doença renal crônica

Perfil: [BRCoreCondition](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Doença renal em estádio final

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condicao-drc",
  "meta" : {
    "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCID10",
      "code" : "N18.0",
      "display" : "Doença renal em estádio final"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  }
}

```
