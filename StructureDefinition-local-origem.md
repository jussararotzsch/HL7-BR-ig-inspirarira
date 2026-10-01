# Local de Origem - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Local de Origem**

## Extension: Local de Origem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/local-origem | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:LocalOrigem |

Local de onde o paciente parte no transporte sanitário. ServiceRequest R4 só tem o local de realização (locationReference), usado aqui como destino. No R5 o recurso Transport resolve isso nativamente.

**Context of Use**

This extension may be used on the following element(s):

* Element ID ServiceRequest

**Usage info**

**Usos:**

* Usa este Extensão: [Transporte Sanitário](StructureDefinition-transporte-sanitario.md)
* Exemplos para este Extensão: [ServiceRequest/transporte-uti](ServiceRequest-transporte-uti.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/br.org.hsl.inspirarira|current/StructureDefinition/StructureDefinition-local-origem.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-local-origem.csv), [Excel](StructureDefinition-local-origem.xlsx), [Schematron](StructureDefinition-local-origem.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "local-origem",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/local-origem",
  "version" : "0.1.0",
  "name" : "LocalOrigem",
  "title" : "Local de Origem",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T16:52:20-03:00",
  "publisher" : "Hospital Sírio-Libanês",
  "contact" : [{
    "name" : "Hospital Sírio-Libanês",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hospitalsiriolibanes.org.br"
    }]
  }],
  "description" : "Local de onde o paciente parte no transporte sanitário. ServiceRequest R4 só tem o local de realização (locationReference), usado aqui como destino. No R5 o recurso Transport resolve isso nativamente.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ServiceRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Local de Origem",
      "definition" : "Local de onde o paciente parte no transporte sanitário. ServiceRequest R4 só tem o local de realização (locationReference), usado aqui como destino. No R5 o recurso Transport resolve isso nativamente."
    },
    {
      "id" : "Extension.id",
      "path" : "Extension.id",
      "short" : "Identificador do elemento",
      "definition" : "Identificador único do elemento dentro do recurso, para referências internas."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "short" : "Identificador da extensão",
      "definition" : "URL que identifica a extensão.",
      "fixedUri" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/local-origem"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Valor da extensão",
      "definition" : "Valor da extensão.",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-location",
        "https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-organization"]
      }]
    }]
  }
}

```
