# Leito UTI adulto tipo II 02 (higienização) - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leito UTI adulto tipo II 02 (higienização)**

## Example Location: Leito UTI adulto tipo II 02 (higienização)

Perfil: [Leito Regulado](StructureDefinition-leito-regulado.md)

**identifier**: `http://hre.exemplo.gov.br/fhir/sid/leito`/UTI-A-02

**status**: Active

**operationalStatus**: [bedStatus: H](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html#v2-0116-H) (Housekeeping)

**name**: UTI Adulto, leito 02

**type**: COMPLEMENTAR, UTI ADULTO - TIPO II

**physicalType**: Bed

**managingOrganization**: [Organization Hospital Regional Exemplo](Organization-org-hospital-destino.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "leito-uti-02",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"]
  },
  "identifier" : [{
    "system" : "http://hre.exemplo.gov.br/fhir/sid/leito",
    "value" : "UTI-A-02"
  }],
  "status" : "active",
  "operationalStatus" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v2-0116",
    "code" : "H",
    "display" : "Housekeeping"
  },
  "name" : "UTI Adulto, leito 02",
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
