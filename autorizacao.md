# Autorização na Task - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Autorização na Task**

## Autorização na Task

# Autorização na Task

## Duas autorizações, duas camadas

| | | |
| :--- | :--- | :--- |
| Regulatória | Este cuidado é pertinente, prioritário, coberto e executável aqui? | TarefaRegulacao (`code = autorizacao`) |
| Administrativo-financeira | Qual é o número e a validade da APAC/AIH que permite registrar e pagar a produção? | AutorizacaoPreviaSUS e RespostaAutorizacaoSUS |

A autorização regulatória acontece na Task. O ciclo é `received`, `in-progress`, `on-hold` (pendência), `completed` (aprovada) ou `rejected` (negada). Cada dimensão avaliada vai para `Task.output`, com `type` de [BRDimensaoDecisaoRegulatoria](https://terminologia.saude.gov.br/fhir/CodeSystem/BRDimensaoDecisaoRegulatoria) e valor de [BRResultadoDecisaoRegulatoria](https://terminologia.saude.gov.br/fhir/CodeSystem/BRResultadoDecisaoRegulatoria). A decisão final é o output com `type = decisao`. O protocolo aplicado fica em `instantiatesCanonical`, com versão.

Quando o procedimento exige APAC ou AIH, a Task gera o Claim com `use = preauthorization` e referencia a ClaimResponse emitida em `output` (`type = autorizacao-administrativa`). A ClaimResponse é um produto da decisão, não a decisão. Por isso a devolução ao solicitante é uma Task `on-hold` com `pendencia-documental`, e não um `ClaimResponse.outcome = error`.

Ausência de vaga não é não pertinência. Falta de cobertura não é contraindicação clínica. Local inadequado gera redirecionamento, e não reinício do pedido.

Exemplo: [B6, autorização regulatória da hemodiálise](Task-task-autorizacao-hemodialise.md), com a [APAC emitida](ClaimResponse-claimresponse-apac-hemodialise.md).

## Produção

[ProducaoSUS](StructureDefinition-producao-sus.md) é um Claim com `use = claim`, apresentado depois da execução. Cada item aponta para o Encounter executado.

| | | |
| :--- | :--- | :--- |
| BPA-I | Não | `referral`ao pedido quando regulado;`item.encounter` |
| RAAS | Não | idem |
| APAC | Sim | `insurance.preAuthRef`e`related.claim` |
| AIH | Sim | idem, com Encounter de internação |

O BPA-C fica fora: é agregado e não deve gerar recursos individuais artificiais (seção 7.2 do guia do GT).

Exemplos: [BPA-I da consulta](Claim-bpai-consulta-nefrologia.md) e [produção da APAC](Claim-producao-apac-hemodialise.md).

## OCI e regras de reembolso

As Ofertas de Cuidados Integrados são pagas por pacote. O valor da OCI só é devido quando o conjunto de procedimentos é concluído dentro do prazo. Três artefatos cobrem isso:

| | | |
| :--- | :--- | :--- |
| [ProtocoloOCI](StructureDefinition-protocolo-oci.md) | PlanDefinition | Código SIGTAP da OCI (`useContext`focus), procedimentos componentes (`must`ou`could`), prazo de conclusão (`action.timingDuration`) |
| [RegraReembolsoOCI](StructureDefinition-regra-reembolso-oci.md) | ChargeItemDefinition | Código da OCI, vigência, condições de pagamento em FHIRPath (`applicability`) e valor de referência |
| [ProducaoSUS](StructureDefinition-producao-sus.md) | Claim | Item com o código da OCI e os componentes realizados em`item.detail` |

A requisição da OCI aponta para o protocolo em `ServiceRequest.instantiatesCanonical`, e a Task herda dele o prazo alvo. As condições da regra são avaliadas sobre o Claim de produção.

Os códigos de OCI vêm dos ValueSets do guia de terminologia (OCIOnco, OCIOftalmo, OCIOrtopedia, OCIOtorrino), reunidos em [BROCISUS](https://terminologia.saude.gov.br/fhir/ValueSet/BROCISUS) junto com o novo OCICardio (`0902010069`, insuficiência cardíaca).

Exemplos: [OCI câncer de mama](PlanDefinition-protocolo-oci-mama.md) e [OCI insuficiência cardíaca](PlanDefinition-protocolo-oci-ic.md). Composição, obrigatoriedade e prazo dos exemplos estão marcados como pendentes de conferência com a norma do programa.

