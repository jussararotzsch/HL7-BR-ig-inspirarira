# Recomendações à RNDS - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Recomendações à RNDS**

## Recomendações à RNDS

# Recomendações à RNDS

1. **Substituir a Composition do RIRA pelo workflow nativo.**Receber ServiceRequest, Task, Appointment e Encounter como recursos independentes, e não um documento com estados em`Composition.event`.
1. **Receber eventos, não só documentos finais.**Consultas, notificações (Subscription) e assinaturas reduzem duplicidade, permitem cancelamento sincronizado e fecham pedidos quando o cuidado acontece em outro ponto da rede (seção 7.4 do guia do GT).
1. **Reativar identifiers de negócio**em todos os recursos administrativos.
1. **Usar os status padrão do FHIR**e publicar como CodeSystems nacionais só o que é de negócio: situação regulatória, dimensão, resultado e motivo da decisão.
1. **Convergir com a ANS.**Claim e ClaimResponse para APAC/AIH espelham Guia e RespostaGuia (`preAuthRef`,`preAuthPeriod`,`referral`). Avaliar um perfil-base nacional de Claim com especializações APAC, AIH e TISS.
1. **Um só perfil de paciente**: br-core-patient.
1. **Resolver a colisão de `BRProcedimentosNacionais`**(TUSS no guia de terminologia, SIGTAP na RNDS).
1. **Publicar ValueSets de OCI para todas as especialidades**, incluindo cardiologia (`0902010069`), e as regras de pagamento das OCIs como artefatos computáveis (PlanDefinition e ChargeItemDefinition).
1. **Regulação hospitalar exige outro modelo, não um valor a mais no ValueSet.**O RIRA aceita “Atenção Hospitalar” como modalidade, mas só sabe produzir um agendamento. Regular leito exige o leito como oferta (Location com tipo e especialidade do CNES e situação operacional), a reserva e a ocupação como Encounter, transferência inter-hospitalar com transporte, vaga zero com responsabilidade registrada, censo de leitos e AIH. Enquanto isso não existir, o binding de modalidade hospitalar no RIRA DEVERIA ser restrito a 09 Assistência Ambulatorial, para não sinalizar uma cobertura que o modelo não tem.

## Terminologias propostas

Mantidas fora deste IG, no repositório `terminologia-regulacao-assistencial`, para importação no OCL (org MS) e publicação no guia de terminologia: BRTipoTarefaRegulacao, BRSituacaoRegulatoria, BRDimensaoDecisaoRegulatoria, BRResultadoDecisaoRegulatoria, BRMotivoDecisaoRegulatoria, BRFatorPrioridadeRegulatoria, BRInstrumentoFinanceiroSUS (e os ValueSets BRInstrumentoAutorizacaoSUS e BRInstrumentoProducaoSUS), BRTipoSaidaTarefaRegulacao, BRTipoLeito e BREspecialidadeLeito (SCNES), BRPopulacaoCensoLeitos, OCICardio, BROCISUS e o ConceptMap BRRIRAEventoParaFluxoNativo.

## Extensões propostas

Só onde não há elemento nativo:

| | | |
| :--- | :--- | :--- |
| [PrioridadeRegulatoria](StructureDefinition-prioridade-regulatoria.md) | Task | `Task.priority`(request-priority) expressa urgência operacional; não comporta classe de protocolo, escore nem fatores de equidade |
| [LocalOrigem](StructureDefinition-local-origem.md) | ServiceRequest | ServiceRequest R4 só tem o local de realização; a origem do transporte não tem elemento. Recurso Transport no R5 |
| [DataEntradaFila](StructureDefinition-data-entrada-fila.md) | Task | Diferente de`ServiceRequest.authoredOn`e de`Task.authoredOn`; precisa sobreviver a reserva expirada, falta e nova etapa |

Avaliados e dispensados: prazo alvo (`Task.restriction.period`), protocolo aplicado (`Task.instantiatesCanonical`), estabelecimento regulador (slice de `Appointment.supportingInformation`), número e validade da autorização (`ClaimResponse.preAuthRef` e `preAuthPeriod`).

