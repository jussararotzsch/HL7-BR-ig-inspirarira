# Artifacts Summary - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Knowledge Artifacts: Measure 

These define measures as part of content in this implementation guide.

| | |
| :--- | :--- |
| [Medida do censo de leitos](Measure-censo-leitos.md) | Contagem de leitos por situação, estratificada por especialidade de leito do CNES. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Agendamento de Regulação Assistencial](StructureDefinition-agendamento-regulacao.md) | Agendamento resultante da regulação. Só DEVE ser criado quando houver proposta de data, local e serviço. Os estados booked, fulfilled, cancelled e noshow substituem os slices event:booked, event:attended, event:cancelled e event:absence do RIRA. |
| [Censo de Leitos](StructureDefinition-censo-leitos.md) | Situação dos leitos de um estabelecimento num instante, estratificada por especialidade de leito do CNES. Calculado a partir dos LeitoRegulado e das InternacaoRegulada. |
| [Internação Regulada](StructureDefinition-internacao-regulada.md) | Reserva e ocupação de leito resultante da regulação. Reserva = status planned com o leito em location.status reserved. Internação = in-progress com o leito active. Transferência interna (entre leitos do mesmo estabelecimento) é a troca de location dentro do mesmo Encounter. Transferência externa encerra este Encounter (desfecho Transferência) e abre outro no destino, regulado por nova Requisição. |
| [Leito Regulado](StructureDefinition-leito-regulado.md) | Leito hospitalar disponível à regulação. Tipo e especialidade seguem os domínios do CNES. A situação operacional (livre, ocupado, higienização, bloqueado) usa a tabela HL7 v2-0116, nativa de Location.operationalStatus. |
| [Protocolo de Oferta de Cuidados Integrados (OCI)](StructureDefinition-protocolo-oci.md) | Composição, obrigatoriedade dos procedimentos e prazo de conclusão de uma OCI do SUS. É artefato definicional: não representa fila, pedido nem decisão. A requisição da OCI aponta para ele em ServiceRequest.instantiatesCanonical. |
| [Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)](StructureDefinition-producao-sus.md) | Apresentação da produção ao SIA/SUS ou SIH/SUS depois da execução do cuidado. Cobre BPA-I e RAAS (sem autorização prévia) e a produção de APAC e AIH (ligada à autorização emitida). Cada item aponta para o Encounter executado. |
| [Regra de Reembolso de OCI](StructureDefinition-regra-reembolso-oci.md) | Condições de pagamento e valor de referência de uma OCI do SUS. As condições (applicability) são avaliadas sobre o Registro de Produção SUS: procedimentos obrigatórios realizados, conclusão no prazo e habilitação do executante. Pagamento por pacote, não por procedimento isolado. |
| [Requisição de Regulação Assistencial](StructureDefinition-requisicao-regulacao.md) | Pedido clínico persistente submetido à regulação do acesso. Registra o que é solicitado, por quê, com que prioridade e com que apoio clínico, independentemente do canal de financiamento. Substitui BRRequisicaoRegulacaoAssistencial do RIRA. |
| [Resposta de Autorização SUS (APAC/AIH)](StructureDefinition-resposta-autorizacao-sus.md) | Emissão, negativa ou crítica da APAC/AIH pelo gestor autorizador. Carrega o número e a validade da autorização. Estrutura alinhada ao perfil RespostaGuia (ClaimResponse) da ANS. |
| [Solicitação de Autorização SUS (APAC/AIH)](StructureDefinition-autorizacao-previa-sus.md) | Solicitação de APAC ou AIH ao gestor autorizador. Pertence à camada administrativo-financeira e NÃO substitui a Requisição nem a Tarefa de Regulação. Estrutura alinhada aos perfis Guia (Claim) da ANS, sem dependência do pacote ANS. |
| [Tarefa de Regulação Assistencial](StructureDefinition-tarefa-regulacao.md) | Etapa de trabalho regulatório sobre uma Requisição de Regulação: regulação do acesso (qualificação, priorização, alocação e agendamento), autorização regulatória, reavaliação, recurso e contrarreferência. É onde a decisão regulatória acontece, com dimensão, resultado, motivo, responsável e protocolo. Substitui os slices de Composition.event do RIRA. |
| [Transporte Sanitário](StructureDefinition-transporte-sanitario.md) | Pedido de transporte do paciente entre estabelecimentos, vinculado à requisição de internação ou transferência. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Data de Entrada na Fila](StructureDefinition-data-entrada-fila.md) | Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa). |
| [Local de Origem](StructureDefinition-local-origem.md) | Local de onde o paciente parte no transporte sanitário. ServiceRequest R4 só tem o local de realização (locationReference), usado aqui como destino. No R5 o recurso Transport resolve isso nativamente. |
| [Prioridade Regulatória](StructureDefinition-prioridade-regulatoria.md) | Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [A1. Pedido de consulta em nefrologia](ServiceRequest-sr-consulta-nefrologia.md) |  |
| [A2. Primeiro agendamento, com falta](Appointment-appt-consulta-nefrologia-falta.md) |  |
| [A3. Reagendamento, realizado](Appointment-appt-consulta-nefrologia.md) |  |
| [A4. Regulação do acesso concluída e executada](Task-task-regulacao-consulta.md) | A falta em A2 não reinicia o pedido: a tarefa voltou à fila preservando a data de entrada e gerou o reagendamento A3. |
| [A5. Consulta realizada](Encounter-enc-consulta-nefrologia.md) |  |
| [A6. Produção em BPA-I](Claim-bpai-consulta-nefrologia.md) | Registro da produção da consulta regulada. BPA-I dispensa autorização prévia. |
| [B1. Pedido de hemodiálise](ServiceRequest-sr-hemodialise.md) |  |
| [B2. Arranjo público SUS (PPI)](Coverage-coverage-sus-arranjo-publico.md) | Coverage que representa o arranjo público de custeio e o gestor responsável. Não é plano individual e não condiciona o direito universal. Perfil BR Public Funding Arrangement fica para versão futura. |
| [B3. Solicitação de APAC](Claim-claim-apac-hemodialise.md) |  |
| [B4. APAC emitida](ClaimResponse-claimresponse-apac-hemodialise.md) |  |
| [B5. Primeira sessão, realizada](Appointment-appt-hemodialise.md) |  |
| [B6. Autorização regulatória concluída](Task-task-autorizacao-hemodialise.md) | A autorização acontece na Task: dimensões avaliadas, decisão e protocolo. A ClaimResponse da APAC é um produto da decisão, referenciado em output. |
| [B7. Atendimento realizado](Encounter-enc-hemodialise.md) | A existência do Encounter é a evidência do atendimento. Substitui event:attended sem duplicar o RAC. |
| [B8. Produção da APAC](Claim-producao-apac-hemodialise.md) | Produção ligada à autorização (insurance.preAuthRef e related.claim) e ao cuidado executado (item.encounter). |
| [C1. Pedido de ultrassonografia com informação insuficiente](ServiceRequest-sr-usg-abdome.md) |  |
| [C2. Devolução por pendência documental](Task-task-regulacao-usg-pendencia.md) | Devolução é pendência regulatória (Task on-hold), não negativa financeira. |
| [C3. Pedido retirado após revisão](ServiceRequest-sr-consulta-urologia-excluida.md) |  |
| [C4. Negativa por ausência de indicação](Task-task-regulacao-urologia-negada.md) | Negativa com dimensão, motivo, responsável e protocolo, passível de recurso (nova Task com partOf). |
| [Complexo regulador](Organization-org-central-regulacao.md) |  |
| [D1. Protocolo da OCI de avaliação diagnóstica inicial de câncer de mama](PlanDefinition-protocolo-oci-mama.md) |  |
| [D2. Regra de reembolso da OCI de câncer de mama](ChargeItemDefinition-regra-reembolso-oci-mama.md) |  |
| [D3. Pedido da OCI](ServiceRequest-sr-oci-mama.md) |  |
| [D4. Agendamento da OCI, realizado](Appointment-appt-oci-mama.md) |  |
| [D5. Regulação da OCI, com prazo alvo do protocolo](Task-task-regulacao-oci-mama.md) |  |
| [D6. Consulta da OCI realizada](Encounter-enc-oci-mama.md) |  |
| [D7. Produção da OCI](Claim-producao-oci-mama.md) | Um item com o código da OCI e os componentes realizados em item.detail. A RegraReembolsoOCI avalia este Claim. |
| [Doença renal crônica](Condition-condicao-drc.md) |  |
| [E1. Protocolo da OCI de insuficiência cardíaca](PlanDefinition-protocolo-oci-ic.md) |  |
| [E2. Regra de reembolso da OCI de insuficiência cardíaca](ChargeItemDefinition-regra-reembolso-oci-ic.md) |  |
| [Estabelecimento executante](Organization-org-executante.md) |  |
| [F1a. Internação na origem, encerrada por transferência](Encounter-enc-origem-enfermaria.md) |  |
| [F1b. Pedido de leito de UTI (transferência externa)](ServiceRequest-sr-leito-uti.md) | O pedido nasce na internação de origem (encounter) e pede leito complementar de UTI. |
| [F1c. Transporte sanitário avançado](ServiceRequest-transporte-uti.md) |  |
| [F1d. Internação na UTI de destino](Encounter-enc-destino-uti.md) | dischargeDisposition 07 Permanência: o BR-Core exige o elemento antes da alta. |
| [F1e. Regulação de leito concluída: paciente internado no destino](Task-task-leito-uti.md) |  |
| [F1f. Solicitação de AIH](Claim-claim-aih-icc.md) |  |
| [F1g. AIH emitida](ClaimResponse-claimresponse-aih-icc.md) |  |
| [F2a. Pedido de leito clínico](ServiceRequest-sr-leito-clinico.md) |  |
| [F2b. Reserva de leito clínico](Encounter-enc-reserva-clinico.md) |  |
| [F2c. Leito reservado](Task-task-leito-clinico.md) | restriction.period.end marca o fim da reserva; se expirar, a tarefa volta a aguardando-leito sem perder a data de entrada. |
| [F3a. Pedido de leito de UTI a partir da UPA](ServiceRequest-sr-vaga-zero.md) |  |
| [F3b. Vaga zero](Task-task-vaga-zero.md) | Sem leito compatível disponível e com risco iminente, o regulador encaminha ao hospital de referência. A decisão tem responsável, motivo e justificativa. |
| [F4. Internação encerrada com alta clínica](Encounter-enc-alta-uti.md) | Após a alta, o leito-uti-02 passa a H (higienização) e depois a U (livre). |
| [F5. Censo do Hospital Regional Exemplo](MeasureReport-censo-hre-20261001.md) |  |
| [Gestor autorizador (SES)](Organization-org-gestor-ses.md) |  |
| [Hospital de destino](Organization-org-hospital-destino.md) |  |
| [Insuficiência cardíaca descompensada](Condition-condicao-icc.md) |  |
| [Leito UTI adulto tipo II 01 (ocupado)](Location-leito-uti-01.md) |  |
| [Leito UTI adulto tipo II 02 (higienização)](Location-leito-uti-02.md) |  |
| [Leito clínica geral 01 (livre, com reserva)](Location-leito-clin-01.md) | A reserva não muda operationalStatus: o leito segue U e a reserva fica no Encounter planned. |
| [Leito clínico na origem](Location-leito-origem-01.md) |  |
| [Paciente João Souza](Patient-paciente-joao.md) |  |
| [Paciente Maria da Silva](Patient-paciente-maria.md) | Paciente usada em todos os cenários. |
| [Protocolo de acesso à nefrologia (exemplo)](PlanDefinition-protocolo-acesso-nefrologia.md) | Semente do perfil BR Access Protocol (seção 6.1 do guia do GT). Define critérios, sem representar fila nem decisão. |
| [UBS solicitante](Organization-org-ubs-solicitante.md) |  |
| [UPA de origem](Organization-org-upa.md) |  |

