# Mapeamento RIRA - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Mapeamento RIRA**

## Mapeamento RIRA

# Mapeamento RIRA

Cada slice de `Composition.event` de `BRRegulacaoAssistencial` e o estado nativo que o substitui. A versão computável está no ConceptMap [BRRIRAEventoParaFluxoNativo](https://terminologia.saude.gov.br/fhir/ConceptMap/BRRIRAEventoParaFluxoNativo).

| | | |
| :--- | :--- | :--- |
| Composition (documento com 7 slices de event) | RequisicaoRegulacao + TarefaRegulacao + AgendamentoRegulacao + Encounter; Claim/ClaimResponse só quando há APAC/AIH | todos |
| event:pending | ServiceRequest`active`; Task`received`/`recebido`até`ready`/`fila-elegivel` | A1, A4 |
| event:returned-to-requester | Task`on-hold`,`pendencia-documental`,`statusReason`e output de completude | C2 |
| event:booked | Appointment`booked`; Task`completed`/`agendado`com output para o Appointment | A3 |
| event:attended | Appointment`fulfilled`+ Encounter; Task`executado` | A5, B7 |
| event:cancelled | Appointment`cancelled`com`cancelationReason` |   |
| event:absence | Appointment`noshow`; Task volta à fila preservando`dataEntradaFila` | A2 |
| event:excluded | ServiceRequest`revoked`(clínica) ou`entered-in-error`(cadastro); Task`rejected`/`cancelado-clinicamente` | C3, C4 |
| Composition.section (1..1, só o Appointment) | Eliminada. Cada recurso é pesquisável por`basedOn`e`focus` |   |
| Appointment.created como “Data da Autorização” | RespostaAutorizacaoSUS.created e preAuthPeriod | B4 |

## Elementos dos perfis

| | | |
| :--- | :--- | :--- |
| ServiceRequest.identifier | 0..0 | 1..* MS |
| ServiceRequest.status / intent | ValueSets próprios | request-status e request-intent padrão |
| ServiceRequest.reasonReference | 1..1 BRCID10Avaliado | 0..* Condition, Observation, DiagnosticReport, DocumentReference, com invariante rr-1 |
| ServiceRequest.encounter | 0..0 | 0..1 MS, Encounter de origem |
| ServiceRequest.subject | BRIndividuo-1.0 | br-core-patient |
| Appointment.identifier | 0..0 | 1..* MS |
| Appointment.status | ValueSet próprio | appointmentstatus padrão |
| Appointment.cancelationReason | 0..0 | MS |
| Appointment.supportingInformation:regulatoryOrganization | slice por identifier.system | slice`regulador`por tipo; novo slice`autorizacao` |
| Appointment.basedOn | 1..1 | 1..* MS (mantido) |

## Fora do escopo do RIRA atual

O RIRA de hoje é, na prática, regulação ambulatorial. O binding de modalidade (`BRModalidadeAssistencialMIRA`) aceita 04 Atenção Hospitalar, mas o modelo termina num Appointment (booked, attended, absence, cancelled) e não tem leito, internação, transferência nem instrumento financeiro. Os artefatos abaixo não substituem nada do RIRA: são escopo novo, vindo do guia do GT Financeiro.

| | | |
| :--- | :--- | :--- |
| Leito | LeitoRegulado, BRTipoLeito, BREspecialidadeLeito | Inexistente |
| Reserva e internação | InternacaoRegulada | Inexistente |
| Transferência inter-hospitalar | RequisicaoRegulacao com encounter de origem, TransporteSanitario, LocalOrigem | Inexistente |
| Vaga zero | TarefaRegulacao (`businessStatus = vaga-zero`, invariante tr-4) | Inexistente |
| Alta e liberação do leito | InternacaoRegulada`finished`, LeitoRegulado H/U | Inexistente |
| Censo de leitos | CensoLeitos, BRPopulacaoCensoLeitos | Inexistente |
| AIH | AutorizacaoPreviaSUS e ProducaoSUS com`subType = aih` | Inexistente |
| APAC | AutorizacaoPreviaSUS, RespostaAutorizacaoSUS, ProducaoSUS | Reduzida a`Appointment.created`como “Data da Autorização” |
| BPA-I e RAAS | ProducaoSUS | Inexistente |
| OCI e reembolso | ProtocoloOCI, RegraReembolsoOCI, BROCISUS | Inexistente |
| Decisão regulatória estruturada | TarefaRegulacao (dimensão, resultado, motivo, protocolo) | Inexistente |

