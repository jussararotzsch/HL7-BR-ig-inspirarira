# Estabelecimento executante - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Estabelecimento executante**

## Example Organization: Estabelecimento executante

Perfil: [BRCoreOrganization](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization)

**identifier**: Provider number/0000003 (utilização: official, )

**name**: Hospital Exemplo

**alias**: HE

**address**: Rua Exemplo, 100 São Paulo SP BR 



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "org-executante",
  "meta" : {
    "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
  },
  "identifier" : [{
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PRN"
      }]
    },
    "system" : "https://saude.gov.br/fhir/sid/cnes",
    "value" : "0000003"
  }],
  "name" : "Hospital Exemplo",
  "alias" : ["HE"],
  "address" : [{
    "line" : ["Rua Exemplo, 100"],
    "city" : "São Paulo",
    "state" : "SP",
    "country" : "BR"
  }]
}

```
