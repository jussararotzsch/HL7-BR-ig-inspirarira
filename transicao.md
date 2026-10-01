# Transição e convivência - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Transição e convivência**

## Transição e convivência

# Transição e convivência

A troca da Composition pelos recursos independentes quebra a compatibilidade retroativa. Emissores e consumidores do RIRA precisam migrar.

## Estratégia

1. **Convivência.**Por um período definido, a RNDS aceita os dois modelos. Um conversor gera os recursos nativos a partir de cada Composition recebida, usando o ConceptMap[BRRIRAEventoParaFluxoNativo](https://terminologia.saude.gov.br/fhir/ConceptMap/BRRIRAEventoParaFluxoNativo).
1. **Identidade.**O identificador do ServiceRequest preserva a continuidade. Números de APAC e AIH continuam como identifiers de negócio.
1. **Decisões pendentes antes de migrar:**
* `event:excluded`: exclusão clínica (`revoked`) ou erro de cadastro (`entered-in-error`)?
* Códigos exatos de `BRStatusRegulacaoAssistencial`.
* Composição, obrigatoriedade e prazo das OCIs, conforme a norma do programa.
* id e versão do pacote BR-Core publicado.

1. **Medição de perda semântica.**Contar as Compositions que não convertem sem ambiguidade (principalmente`pending`e`excluded`).

## Questões para o GT (seção 20 do guia)

* Quais CodeSystems nacionais ficam responsáveis por estágios da fila, decisão, pendência, redirecionamento, glosa e recurso? Este guia propõe candidatos.
* Perfil-base nacional de Claim com especializações APAC, AIH e TISS, ou famílias independentes?
* Quais negativas podem ser automáticas e quais exigem revisão humana?

