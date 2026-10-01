# Leito clínica geral 01 (livre, com reserva) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leito clínica geral 01 (livre, com reserva)**

## Example Location: Leito clínica geral 01 (livre, com reserva)

Perfil: [Leito Regulado](StructureDefinition-leito-regulado.md)

**identifier**: `http://hre.exemplo.gov.br/fhir/sid/leito`/CLM-01

**status**: Active

**operationalStatus**: [bedStatus: U](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html#v2-0116-U) (Unoccupied)

**name**: Clínica Médica, leito 01

**type**: CLINICO, CLINICA GERAL

**physicalType**: Bed

**managingOrganization**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "leito-clin-01",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"]
  },
  "identifier" : [{
    "system" : "http://hre.exemplo.gov.br/fhir/sid/leito",
    "value" : "CLM-01"
  }],
  "status" : "active",
  "operationalStatus" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v2-0116",
    "code" : "U",
    "display" : "Unoccupied"
  },
  "name" : "Clínica Médica, leito 01",
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoLeito",
      "code" : "2",
      "display" : "CLINICO"
    }]
  },
  {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
      "code" : "33",
      "display" : "CLINICA GERAL"
    }]
  }],
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bd"
    }]
  },
  "managingOrganization" : {
    "reference" : "Organization/org-hospital-destino"
  }
}

```
