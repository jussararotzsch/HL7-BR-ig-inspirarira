# F1c. Transporte sanitário avançado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **F1c. Transporte sanitário avançado**

## Example ServiceRequest: F1c. Transporte sanitário avançado

Perfil: [Transporte Sanitário](StructureDefinition-transporte-sanitario.md)

**Local de Origem**: [Location Enfermaria, leito 07](Location-leito-origem-01.md)

**identifier**: `http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/transporte`/TR-SAN-2026-0412

**basedOn**: [ServiceRequest TRATAMENTO DE INSUFICIENCIA CARDIACA](ServiceRequest-sr-leito-uti.md)

**status**: Completed

**intent**: Order

**category**: Tratamentos clínicos (outras especialidades)

**priority**: Urgent

**code**: Transporte sanitário com suporte avançado

**subject**: [João Souza Male, DoB: 1950-07-02 ( Health Card Number (use: official, ))](Patient-paciente-joao.md)

**occurrence**: 2026-10-01 15:00:00-0300

**requester**: [Organization Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md)

**locationReference**: [Location UTI Adulto, leito 01](Location-leito-uti-01.md)

**reasonReference**: [Condition Insuficiência cardíaca congestiva](Condition-condicao-icc.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "transporte-uti",
  "meta" : {
    "profile" : ["http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/transporte-sanitario"]
  },
  "extension" : [{
    "url" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/local-origem",
    "valueReference" : {
      "reference" : "Location/leito-origem-01"
    }
  }],
  "identifier" : [{
    "system" : "http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/transporte",
    "value" : "TR-SAN-2026-0412"
  }],
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-leito-uti"
  }],
  "status" : "completed",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRSubgrupoTabelaSUS",
      "code" : "0303",
      "display" : "Tratamentos clínicos (outras especialidades)"
    }]
  }],
  "priority" : "urgent",
  "code" : {
    "text" : "Transporte sanitário com suporte avançado"
  },
  "subject" : {
    "reference" : "Patient/paciente-joao"
  },
  "occurrenceDateTime" : "2026-10-01T15:00:00-03:00",
  "requester" : {
    "reference" : "Organization/org-central-regulacao"
  },
  "locationReference" : [{
    "reference" : "Location/leito-uti-01"
  }],
  "reasonReference" : [{
    "reference" : "Condition/condicao-icc"
  }]
}

```
