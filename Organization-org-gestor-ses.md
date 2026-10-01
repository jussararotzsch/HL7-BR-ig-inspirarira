# Gestor autorizador (SES) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gestor autorizador (SES)**

## Example Organization: Gestor autorizador (SES)

Perfil: [BRCoreOrganization](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)

**identifier**: Tax ID number/00000000000191 (utilização: official, )

**name**: Secretaria Estadual de Saúde Exemplo

**alias**: SES Exemplo

**address**: Rua Exemplo, 100 São Paulo SP BR 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "org-gestor-ses",
  "meta" : {
    "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "TAX"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnpj",
    "value" : "00000000000191"
  }],
  "name" : "Secretaria Estadual de Saúde Exemplo",
  "alias" : ["SES Exemplo"],
  "address" : [{
    "line" : ["Rua Exemplo, 100"],
    "city" : "São Paulo",
    "state" : "SP",
    "country" : "BR"
  }]
}

```
