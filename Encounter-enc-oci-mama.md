# D6. Consulta da OCI realizada - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **D6. Consulta da OCI realizada**

## Example Encounter: D6. Consulta da OCI realizada

Perfil: [br-core-encounter](https://simplifier.net/resolve?scope=br.gov.saude.br-core.fhir@1.3.0&canonical=https://br-core.saude.gov.br/fhir/StructureDefinition/br-core-encounter)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (ambulatory)

**priority**: Consulta agendada

**subject**: [Maria da Silva Female, DoB: 1961-03-14 ( Health Card Number (use: official, ))](Patient-paciente-maria.md)

**basedOn**: [ServiceRequest OCI AVALIAÇÃO DIAGNÓSTICA INICIAL DE CÂNCER DE MAMA](ServiceRequest-sr-oci-mama.md)

**appointment**: [Appointment: identifier = http://regulacao-exemplo.saude.sp.gov.br/fhir/sid/agendamento#AG-2026-004980; status = fulfilled; serviceType = CONSULTA MEDICA EM ATENÇÃO ESPECIALIZADA; start = 2026-08-18 09:00:00-0300; end = 2026-08-18 09:30:00-0300](Appointment-appt-oci-mama.md)

**period**: 2026-08-18 09:05:00-0300 --> 2026-08-18 09:40:00-0300

**serviceProvider**: [Organization Hospital Exemplo](Organization-org-executante.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "enc-oci-mama",
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
    "reference" : "ServiceRequest/sr-oci-mama"
  }],
  "appointment" : [{
    "reference" : "Appointment/appt-oci-mama"
  }],
  "period" : {
    "start" : "2026-08-18T09:05:00-03:00",
    "end" : "2026-08-18T09:40:00-03:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/org-executante"
  }
}

```
