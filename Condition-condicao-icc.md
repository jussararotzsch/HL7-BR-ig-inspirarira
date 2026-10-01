# Insuficiência cardíaca descompensada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Insuficiência cardíaca descompensada**

## Example Condition: Insuficiência cardíaca descompensada

Perfil: [BRCoreCondition](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-condition)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Insuficiência cardíaca congestiva

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "condicao-icc",
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
      "code" : "I50.0",
      "display" : "Insuficiência cardíaca congestiva"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-joao"
  }
}

```
