# B7. Atendimento realizado - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **B7. Atendimento realizado**

## Example Encounter: B7. Atendimento realizado

Perfil: [br-core-encounter](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**priority**: Eletivo

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**basedOn**: [ServiceRequest Hemodiálise (máximo 3 sessões por semana)](ServiceRequest-sr-hemodialise.md)

**appointment**: [Appointment: identifier = http://hospital-exemplo.org.br/fhir/sid/agendamento#AG-HD-2026-0311; status = fulfilled; serviceType = Hemodiálise (máximo 3 sessões por semana); start = 2026-10-13 07:00:00-0300; end = 2026-10-13 11:00:00-0300](Appointment-appt-hemodialise.md)

**period**: 2026-10-13 07:05:00-0300 --> 2026-10-13 11:10:00-0300

**serviceProvider**: [Organization Hospital Exemplo](Organization-org-executante.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-hemodialise",
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
      "code" : "01",
      "display" : "Eletivo"
    }]
  },
  "subject" : {
    "reference" : "Patient/paciente-maria"
  },
  "basedOn" : [{
    "reference" : "ServiceRequest/sr-hemodialise"
  }],
  "appointment" : [{
    "reference" : "Appointment/appt-hemodialise"
  }],
  "period" : {
    "start" : "2026-10-13T07:05:00-03:00",
    "end" : "2026-10-13T11:10:00-03:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/org-executante"
  }
}

```
