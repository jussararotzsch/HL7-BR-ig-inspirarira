# Débitos técnicos - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Débitos técnicos**

## Débitos técnicos

# Débitos técnicos

Achados do comparativo RIRA x BR-Core x FHIR R4 e da construção deste guia, com o tratamento dado aqui.

## Do comparativo

| | | | |
| :--- | :--- | :--- | :--- |
| 1 | Composition reimplementa por fora uma máquina de estados que o FHIR tem nativa | Alto | Composition eliminada; workflow ServiceRequest, Task, Appointment, Encounter |
| 2 | Composition.event 1..1: só um estado por documento, sem histórico | Alto | Histórico nas versões de cada recurso e em Task.partOf |
| 3 | Atendimento duplicado (Encounter do RAC e event:attended) | Alto | Encounter é a única evidência |
| 4 | Slices`excluded`e`cancelled`sem detail obrigatório, inconsistentes com os demais | Médio | Deixam de existir |
| 5 | Dois mecanismos de referência (section.entry e event.detail) | Baixo | Eliminados |
| 6 | Identifiers de negócio zerados em ServiceRequest e Appointment | Alto | 1..* MS |
| 7 | ValueSets próprios de status e intent | Médio | Padrões FHIR; estados de negócio em Task.businessStatus |
| 8 | Appointment.created reinterpretado como “Data da Autorização” | Alto | RespostaAutorizacaoSUS.created e preAuthPeriod |
| 9 | Nenhum recurso para a autorização APAC/AIH | Alto | AutorizacaoPreviaSUS e RespostaAutorizacaoSUS, alinhados a Guia/RespostaGuia da ANS |
| 10 | Motivo restrito a um Condition (BRCID10Avaliado 1..1) | Médio | Faixa do BR-Core, com invariante de indicação |
| 11 | Appointment.cancelationReason zerado | Médio | MS |
| 12 | reasonReference (RIRA) x reasonCode (BR-Core) no Appointment | Médio | Ambos disponíveis; reasonReference MS |
| 13 | Três perfis de paciente (BRIndividuo-1.0, br-core-patient, paciente ANS) | Alto | br-core-patient em todos os perfis |
| 14 | BRIndividuo-1.0 fora do repositório, não auditável | Alto | Não usado |
| 15 | Solicitante e executante restritos a estabelecimento | Médio | Faixa do BR-Core |

## Encontrados na construção

| | | | |
| :--- | :--- | :--- | :--- |
| 16 | `BRProcedimentosNacionais`no guia de terminologia enumera TUSS-22; na RNDS,`BRProcedimentosNacionais-1.0`é SIGTAP | Alto: mesmo nome, conteúdos diferentes. O BR-Core herda o de TUSS em ServiceRequest.code e Appointment.serviceType | Este guia liga SIGTAP via`BRTabelaSUS`. Levar ao GT de terminologia |
| 17 | Não há ValueSet OCI de cardiologia no guia de terminologia;`0902010069`só aparece no OCL | Médio | Proposto ValueSet`OCICardio`e a união`BROCISUS`no repositório de terminologia da regulação |
| 18 | `BRStatusRegulacaoAssistencial`tem só NamingSystem, sem CodeSystem publicado | Médio: o ConceptMap de transição não valida os códigos de origem | Confirmar os códigos no pacote da RNDS |
| 19 | O BR-Core declara`$loinc = https://loinc.org/`; a URL canônica é`http://loinc.org` | Médio | Corrigir no BR-Core |
| 20 | O repositório do BR-Core declara id`br.gov.saude.br-core.fhir`e canonical`br-core.saude.gov.br` | Bloqueante para o build com IG Publisher se o pacote não estiver publicado com esse id | Confirmar id e versão publicados |
| 21 | O BR-Core 1.3.0 local compila com erros em br-core-patient (extensões IPS BR não resolvidas sem o pacote`br.gov.saude.ips.fhir`) | Baixo aqui | Não afeta este guia, que só referencia br-core-patient |
| 22 | Não existe CodeSystem nacional de instrumento de registro (APAC, AIH, BPA-I, RAAS) no guia de terminologia | Médio | Proposto`BRInstrumentoFinanceiroSUS`no repositório de terminologia da regulação, para o OCL |
| 23 | br-core-encounter exige`hospitalization.dischargeDisposition`1..1 mesmo em internação em curso ou reserva | Médio: obriga um desfecho antes da alta | Exemplos usam BRMotivoDesfecho 07 Permanência. Propor 0..1 no BR-Core com invariante para`finished` |
| 24 | Domínio LEITOS do SCNES não traz a relação especialidade -> tipo de leito; descrições se repetem (CARDIOLOGIA 02/32, ONCOLOGIA 12/44, AIDS 31/69 etc.) | Médio: códigos só se distinguem pelo tipo | LeitoRegulado exige tipo e especialidade. Incluir a relação como propriedade no CodeSystem quando a fonte for obtida |
| 25 | Não há terminologia nacional de tipo de transporte sanitário | Baixo | `TransporteSanitario.code`só em texto nos exemplos |
| 26 | Em R4, MeasureReport.subject não aceita Organization | Baixo | CensoLeitos usa o estabelecimento como`reporter` |
| 27 | `ServiceRequest.category`e`Appointment.serviceCategory`aceitam 04 Atenção Hospitalar (`BRModalidadeAssistencialMIRA`), mas o RIRA não tem estrutura hospitalar: sem leito, internação, transferência nem AIH | Alto: o modelo promete uma cobertura que não entrega; um pedido hospitalar vira um agendamento | Regulação hospitalar modelada à parte (ver[Regulação de leitos](leitos.md)); ver[Fora do escopo do RIRA atual](mapeamento-rira.md#fora-do-escopo-do-rira-atual) |

