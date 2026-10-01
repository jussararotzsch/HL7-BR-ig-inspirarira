# Paciente Maria da Silva - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente Maria da Silva**

## Example Patient: Paciente Maria da Silva

Perfil: [BRCorePatient](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)

Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))

-------

| | |
| :--- | :--- |
| Other Id: | Tax ID number/00000000191 (utilização: official, ) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-maria",
  "meta" : {
    "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cpf",
    "value" : "00000000191"
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "HC"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cns",
    "value" : "700000000000005"
  }],
  "name" : [{
    "family" : "da Silva",
    "given" : ["Maria"]
  }],
  "gender" : "female",
  "birthDate" : "1961-03-14"
}

```
