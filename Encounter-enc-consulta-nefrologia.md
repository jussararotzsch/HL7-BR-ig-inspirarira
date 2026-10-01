# A5. Consulta realizada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A5. Consulta realizada**

## Example Encounter: A5. Consulta realizada

Perfil: [br-core-encounter](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**priority**: Consulta agendada

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**basedOn**: [ServiceRequest Consulta médica em atenção especializada](ServiceRequest-sr-consulta-nefrologia.md)

**appointment**: [Appointment: identifier = http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento#AG-2026-005102; status = fulfilled; serviceType = Consulta médica em atenção especializada; specialty = Médico nefrologista; start = 2026-09-15 10:00:00-0300; end = 2026-09-15 10:30:00-0300](Appointment-appt-consulta-nefrologia.md)

**period**: 2026-09-15 10:05:00-0300 --> 2026-09-15 10:35:00-0300

**reasonReference**: [Condition Doença renal em estádio final](Condition-condicao-drc.md)

**serviceProvider**: [Organization Hospital Exemplo](Organization-org-executante.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-consulta-nefrologia",
  "meta" : {
    "profile" : ["https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "priority" : {
    "coding" : [{
      "system" : "https://terminologia.saude.gov.br/fhir/CodeSystem/BRCaraterAtendimento",
      "code" : "03",
      "display" : "Consulta agendada"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-consulta-nefrologia"
  }],
  "appointment" : [{
    "reference" : "Appointment/appt-consulta-nefrologia"
  }],
  "period" : {
    "start" : "2026-09-15T10:05:00-03:00",
    "end" : "2026-09-15T10:35:00-03:00"
  },
  "reasonReference" : [{
    "reference" : "Condition/condicao-drc"
  }],
  "serviceProvider" : {
    "reference" : "Organization/org-executante"
  }
}

```
