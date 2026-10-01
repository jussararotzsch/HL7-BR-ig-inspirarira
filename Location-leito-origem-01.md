# Leito clínico na origem - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leito clínico na origem**

## Example Location: Leito clínico na origem

Perfil: [Leito Regulado](StructureDefinition-leito-regulado.md)

**identifier**: `http://hospital-exemplo.org.br/fhir/sid/leito`/ENF-07

**status**: Active

**operationalStatus**: [bedStatus: H](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html#v2-0116-H) (Housekeeping)

**name**: Enfermaria, leito 07

**type**: CLINICO, CARDIOLOGIA

**physicalType**: Bed

**managingOrganization**: [Organization Hospital Exemplo](Organization-org-executante.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "leito-origem-01",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"]
  },
  "identifier" : [{
    "system" : "http://hospital-exemplo.org.br/fhir/sid/leito",
    "value" : "ENF-07"
  }],
  "status" : "active",
  "operationalStatus" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v2-0116",
    "code" : "H",
    "display" : "Housekeeping"
  },
  "name" : "Enfermaria, leito 07",
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
      "code" : "32",
      "display" : "CARDIOLOGIA"
    }]
  }],
  "physicalType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
      "code" : "bd"
    }]
  },
  "managingOrganization" : {
    "reference" : "Organization/org-executante"
  }
}

```
