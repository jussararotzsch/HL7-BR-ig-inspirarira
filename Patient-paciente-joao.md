# Paciente João Souza - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente João Souza**

## Example Patient: Paciente João Souza

Perfil: [BRCorePatient](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-patient)

João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))

-------

| | |
| :--- | :--- |
| Other Id: | Tax ID number/00000000272 (utilização: official, ) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "paciente-joao",
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
    "value" : "00000000272"
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
    "value" : "700000000000013"
  }],
  "name" : [{
    "family" : "Souza",
    "given" : ["João"]
  }],
  "gender" : "male",
  "birthDate" : "1950-07-02"
}

```
