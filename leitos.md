# Regulação de leitos - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Regulação de leitos**

## Regulação de leitos

# Regulação de leitos

A regulação de leitos usa o mesmo núcleo do ambulatorial: RequisicaoRegulacao, TarefaRegulacao (`code = regulacao-leito`) e AIH em AutorizacaoPreviaSUS e ProducaoSUS. O que muda é a oferta (o leito) e a forma de reservar.

## Peças

| | | |
| :--- | :--- | :--- |
| Leito | Location (`physicalType = bd`) | [LeitoRegulado](StructureDefinition-leito-regulado.md) |
| Reserva e ocupação | Encounter | [InternacaoRegulada](StructureDefinition-internacao-regulada.md) |
| Transporte entre estabelecimentos | ServiceRequest | [TransporteSanitario](StructureDefinition-transporte-sanitario.md) |
| Situação da rede | MeasureReport | [CensoLeitos](StructureDefinition-censo-leitos.md) |

O tipo e a especialidade do leito seguem os domínios do SCNES (`BRTipoLeito`, `BREspecialidadeLeito`). O leito pedido vai em `ServiceRequest.locationCode`, com a especialidade de leito.

## Estados

| | | | |
| :--- | :--- | :--- | :--- |
| Aguardando leito |   |   | aguardando-leito |
| Leito reservado | U | planned,`location.status = reserved` | leito-reservado |
| Internado | O | in-progress,`location.status = active` | internado |
| Transferência interna | anterior H, novo O | mesmo Encounter: location anterior completed, nova active |   |
| Transferência externa | origem H | origem finished (desfecho 09 Transferência); destino in-progress | transferido / internado |
| Alta | H, depois U | finished (BRMotivoDesfecho) | alta |
| Vaga zero |   | conforme admissão no destino | vaga-zero |

A reserva é estado do Encounter, não do leito. O leito reservado continua U até a admissão. Se a reserva expira (`Task.restriction.period.end`), a Task volta a aguardando-leito e a extensão `dataEntradaFila` preserva a data original.

## Transferência

* **Interna**, entre leitos do mesmo estabelecimento: não passa pela central. É a troca de `Encounter.location` no mesmo Encounter.
* **Externa (inter-hospitalar)**: nova RequisicaoRegulacao com `encounter` apontando a internação de origem. A Task registra o aceite do destino (`output` destino = aceito). Quando há deslocamento, o TransporteSanitario é gerado em `output`. A origem encerra com desfecho 09 Transferência e `hospitalization.destination`; o destino abre nova InternacaoRegulada com `hospitalization.origin`.

## Vaga zero

Sem leito compatível e diante de risco iminente, o regulador encaminha ao estabelecimento de referência mesmo sem vaga. A Task registra `businessStatus = vaga-zero`, motivo em `statusReason`, justificativa em `note` (invariante tr-4), capacidade = indisponível, decisão = aprovado e o estabelecimento de destino em `output`.

## Censo de leitos

CensoLeitos é um MeasureReport `summary` por estabelecimento (`reporter`), com contagens de [BRPopulacaoCensoLeitos](https://terminologia.saude.gov.br/fhir/CodeSystem/BRPopulacaoCensoLeitos) (existentes, SUS, ocupados, livres, reservados, higienização, bloqueados), estratificadas por especialidade de leito. É calculado a partir dos LeitoRegulado e das InternacaoRegulada.

## Exemplos

Cenário F: [transferência externa para UTI](Task-task-leito-uti.md), com [transporte](ServiceRequest-transporte-uti.md) e [AIH](ClaimResponse-claimresponse-aih-icc.md); [leito reservado](Task-task-leito-clinico.md); [vaga zero](Task-task-vaga-zero.md); [alta](Encounter-enc-alta-uti.md); [censo](MeasureReport-censo-hre-20261001.md).

