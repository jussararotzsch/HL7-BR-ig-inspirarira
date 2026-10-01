# Leito UTI adulto tipo II 01 (ocupado) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leito UTI adulto tipo II 01 (ocupado)**

## Example Location: Leito UTI adulto tipo II 01 (ocupado)

Perfil: [Leito Regulado](StructureDefinition-leito-regulado.md)

**identifier**: `http://hre.exemplo.gov.br/fhir/sid/leito`/UTI-A-01

**status**: Active

**operationalStatus**: [bedStatus: O](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html#v2-0116-O) (Occupied)

**name**: UTI Adulto, leito 01

**type**: COMPLEMENTAR, UTI ADULTO - TIPO II

**physicalType**: Bed

**managingOrganization**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "leito-uti-01",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"]
  },
  "identifier" : [{
    "system" : "http://hre.exemplo.gov.br/fhir/sid/leito",
    "value" : "UTI-A-01"
  }],
  "status" : "active",
  "operationalStatus" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v2-0116",
    "code" : "O",
    "display" : "Occupied"
  },
  "name" : "UTI Adulto, leito 01",
  "type" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRTipoLeito",
      "code" : "3",
      "display" : "COMPLEMENTAR"
    }]
  },
  {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BREspecialidadeLeito",
      "code" : "75",
      "display" : "UTI ADULTO - TIPO II"
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
