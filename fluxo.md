# Fluxo regulatório - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Fluxo regulatório**

## Fluxo regulatório

# Fluxo regulatório

O ServiceRequest é o objeto clínico persistente. Cada etapa de trabalho é uma Task. O Appointment só é criado quando existe proposta de data, local e serviço. O Encounter comprova que o cuidado ocorreu.

## Passos no SUS

| | | |
| :--- | :--- | :--- |
| 1 Solicitar | `POST`RequisicaoRegulacao com contexto clínico | APS, ambulatório, hospital |
| 2 Receber | Criar TarefaRegulacao (`basedOn`e`focus`no pedido) | Complexo regulador |
| 3 Qualificar | Atualizar a Task; pedir complemento se faltar informação | Regulador e solicitante |
| 4 Priorizar | Extensão`prioridadeRegulatoria`,`restriction.period`(prazo alvo),`dataEntradaFila` | Regulador ou protocolo |
| 5 Rotear e alocar | Pesquisar HealthcareService, Schedule, Slot | Central e prestador |
| 6 Agendar | Criar AgendamentoRegulacao; Task`output`aponta para ele | Central, unidade ou cidadão |
| 7 Autorizar | Task`code = autorizacao`; se exigido, Claim/ClaimResponse APAC ou AIH | Gestor autorizador |
| 8 Executar | Encounter e Procedure | Executante |
| 9 Registrar produção | ProducaoSUS (BPA-I, RAAS, APAC, AIH) ligado ao Encounter | Executante |
| 10 Contrarreferir | Communication ou DocumentReference; Task`code = contrarreferencia` | Executante |

## Estados

`ServiceRequest.status` controla só a vigência clínica. Ele NÃO DEVE receber códigos como “na fila” ou “agendado”.

| | | | |
| :--- | :--- | :--- | :--- |
| Pedido recebido | active | received | recebido |
| Em qualificação | active | in-progress | qualificacao |
| Aguardando complemento | active | on-hold | pendencia-documental |
| Elegível, aguardando oferta | active | ready | fila-elegivel |
| Oferta em negociação | active | in-progress | oferta-proposta |
| Agendado | active | completed | agendado (+ Appointment booked) |
| Autorização em análise | active | in-progress | autorizacao-em-analise |
| Autorizado | active | completed | autorizado |
| Autorização negada | active ou revoked | rejected | autorizacao-negada |
| Pedido clínico suspenso | on-hold | on-hold | suspensao-clinica |
| Sem indicação após revisão | revoked | rejected | cancelado-clinicamente |
| Executado | completed | completed | executado (+ Encounter) |
| Falha operacional recuperável | active | failed | reprocessamento |

## Fila

A fila é uma visão calculada das Tasks com `status = ready` e `businessStatus = fila-elegivel`, filtradas por serviço, território e requisitos. A ordenação usa prioridade clínica, prazo alvo, risco da espera, fragilidade, barreiras e data de entrada. A posição nunca é gravada.

Quando surge uma vaga, uma transação reserva o Slot, atualiza a Task e cria o Appointment. Se a reserva expira ou o paciente falta, a Task volta à fila e a extensão `dataEntradaFila` preserva a data original. O [cenário A](Task-task-regulacao-consulta.md) mostra uma falta seguida de reagendamento sem reiniciar o pedido.

## Invariantes

| | |
| :--- | :--- |
| rr-1 | Pedido regulado tem indicação clínica (reasonCode ou reasonReference) |
| tr-1 | Task rejeitada tem statusReason e ao menos uma dimensão em output |
| tr-2 | Task com businessStatus`agendado`aponta o Appointment em output |
| tr-3 | Task de autorização concluída ou rejeitada registra a decisão (`output.type = decisao`) |
| ag-1 | Agendamento tem o paciente como participante |
| ra-1 | Autorização emitida tem número (preAuthRef) e validade (preAuthPeriod) |
| pr-1 | Produção de APAC/AIH informa o número da autorização |
| pr-2 | Item de OCI detalha os procedimentos componentes |
| tr-4 | Vaga zero tem motivo e justificativa |
| tr-5 | Task com leito reservado aponta a InternacaoRegulada |
| in-1 | Reserva tem leito com location.status reserved |
| in-2 | Internação em curso tem exatamente um leito ativo |
| in-3 | Internação encerrada informa o desfecho |
| oci-1 | Protocolo da OCI declara o código SIGTAP da oferta |

