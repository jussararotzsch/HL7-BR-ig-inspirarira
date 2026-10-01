# Início - Guia de Implementação InspiraRIRA v0.1.0

* [**Table of Contents**](toc.md)
* **Início**

## Início

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hsl.org.br/ig/inspirarira/ImplementationGuide/br.org.hsl.inspirarira | *Version*:0.1.0 |
| Draft as of 2026-10-01 | *Computable Name*:InspiraRIRA |

# Guia de Implementação InspiraRIRA

Guia FHIR **R4 (4.0.1)** que refatora o **RIRA** (Regulação Assistencial da RNDS) para o workflow nativo do FHIR.

> Status `draft`. Os artefatos são proposta técnica para deliberação e não declaram conformidade nacional. O desenho segue o **Guia de Implementação FHIR para Regulação e Processamento Financeiro no Brasil** (Working Draft 0.1, GT Financeiro do HL7 Brasil) e o comparativo RIRA x BR-Core x R4.

## Por que refatorar

O RIRA embrulha todo o ciclo da regulação numa Composition (`BRRegulacaoAssistencial`) com sete slices de `Composition.event`. Como `Composition.event` é 1..1 por documento, cada documento guarda um único estado: é um retrato, não um histórico. Além disso, o atendimento aparece duas vezes, no Encounter do RAC e no evento `attended`, sem ligação entre os dois.

O FHIR já tem esse ciclo nativo:

| | | |
| :--- | :--- | :--- |
| Pedido clínico | ServiceRequest | [RequisicaoRegulacao](StructureDefinition-requisicao-regulacao.md) |
| Trabalho e decisão regulatória | Task | [TarefaRegulacao](StructureDefinition-tarefa-regulacao.md) |
| Agendamento | Appointment | [AgendamentoRegulacao](StructureDefinition-agendamento-regulacao.md) |
| Atendimento ambulatorial | Encounter | br-core-encounter (sem perfil novo) |
| Autorização APAC/AIH | Claim / ClaimResponse | [AutorizacaoPreviaSUS](StructureDefinition-autorizacao-previa-sus.md),[RespostaAutorizacaoSUS](StructureDefinition-resposta-autorizacao-sus.md) |
| Produção BPA-I, RAAS, APAC, AIH | Claim | [ProducaoSUS](StructureDefinition-producao-sus.md) |
| Composição e prazo da OCI | PlanDefinition | [ProtocoloOCI](StructureDefinition-protocolo-oci.md) |
| Regra de reembolso da OCI | ChargeItemDefinition | [RegraReembolsoOCI](StructureDefinition-regra-reembolso-oci.md) |
| Leito | Location | [LeitoRegulado](StructureDefinition-leito-regulado.md) |
| Reserva e internação | Encounter | [InternacaoRegulada](StructureDefinition-internacao-regulada.md) |
| Transporte sanitário | ServiceRequest | [TransporteSanitario](StructureDefinition-transporte-sanitario.md) |
| Censo de leitos | MeasureReport | [CensoLeitos](StructureDefinition-censo-leitos.md) |

## Princípios

* **Clínica antes do faturamento.** O ServiceRequest expressa a necessidade. Claim nunca é a única representação do cuidado.
* **A decisão regulatória está na Task**, inclusive a autorização. Claim e ClaimResponse são a camada administrativo-financeira.
* **Status nativos.** ServiceRequest.status guarda só a vigência clínica. Fila, pendência, autorização e agendamento vão para `Task.businessStatus`.
* **Negativa com motivo computável.** Toda negativa informa a dimensão que falhou e o motivo.
* **BR-Core como base.** ServiceRequest, Appointment, Encounter, Patient e Organization derivam do BR-Core 1.3.0 ou o referenciam.
* **Terminologias pelas URLs do guia de terminologia** (`terminologia.saude.gov.br/fhir`).

## Páginas

* [Fluxo regulatório](fluxo.md): estados de negócio e transições.
* [Autorização na Task](autorizacao.md): autorização regulatória, APAC/AIH, produção e reembolso de OCI.
* [Regulação de leitos](leitos.md): reserva, internação, transferência interna e externa, vaga zero, alta e censo.
* [Mapeamento RIRA](mapeamento-rira.md): de cada slice legado para o modelo nativo.
* [Débitos técnicos](debitos-tecnicos.md): achados do comparativo e como este guia os trata.
* [Recomendações à RNDS](recomendacoes-rnds.md).
* [Transição e convivência](transicao.md).
* [Artefatos](artifacts.md).

### Dependências



### Análise entre versões do FHIR

This is an R4 IG. None of the features it uses are changed in R4B, so it can be used as is with R4B systems. Packages for both [R4 (br.org.hsl.inspirarira.r4)](package.r4.tgz) and [R4B (br.org.hsl.inspirarira.r4b)](package.r4b.tgz) are available.

### Propriedade intelectual

Este publication inclui o IP abrangido pelas seguintes declarações.

* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Claim Type Codes](http://terminology.hl7.org/7.1.0/CodeSystem-claim-type.html): [Claim/bpai-consulta-nefrologia](Claim-bpai-consulta-nefrologia.md), [Claim/claim-aih-icc](Claim-claim-aih-icc.md)... Show 5 more, [Claim/claim-apac-hemodialise](Claim-claim-apac-hemodialise.md), [Claim/producao-apac-hemodialise](Claim-producao-apac-hemodialise.md), [Claim/producao-oci-mama](Claim-producao-oci-mama.md), [ClaimResponse/claimresponse-aih-icc](ClaimResponse-claimresponse-aih-icc.md) and [ClaimResponse/claimresponse-apac-hemodialise](ClaimResponse-claimresponse-apac-hemodialise.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.1.0/CodeSystem-condition-clinical.html): [Condition/condicao-drc](Condition-condicao-drc.md) and [Condition/condicao-icc](Condition-condicao-icc.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.1.0/CodeSystem-condition-ver-status.html): [Condition/condicao-drc](Condition-condicao-drc.md) and [Condition/condicao-icc](Condition-condicao-icc.md)
* [Location type](http://terminology.hl7.org/7.1.0/CodeSystem-location-physical-type.html): [Clínica Médica, leito 01](Location-leito-clin-01.md), [Enfermaria, leito 07](Location-leito-origem-01.md), [LeitoRegulado](StructureDefinition-leito-regulado.md), [UTI Adulto, leito 01](Location-leito-uti-01.md) and [UTI Adulto, leito 02](Location-leito-uti-02.md)
* [Measure Scoring](http://terminology.hl7.org/7.1.0/CodeSystem-measure-scoring.html): [CensoLeitos](Measure-censo-leitos.md)
* [MeasureType](http://terminology.hl7.org/7.1.0/CodeSystem-measure-type.html): [CensoLeitos](Measure-censo-leitos.md)
* [PlanDefinitionType](http://terminology.hl7.org/7.1.0/CodeSystem-plan-definition-type.html): [ProtocoloAcessoNefrologia](PlanDefinition-protocolo-acesso-nefrologia.md), [ProtocoloOCI](StructureDefinition-protocolo-oci.md), [ProtocoloOCIIC](PlanDefinition-protocolo-oci-ic.md) and [ProtocoloOCIMama](PlanDefinition-protocolo-oci-mama.md)
* [Process Priority Codes](http://terminology.hl7.org/7.1.0/CodeSystem-processpriority.html): [Claim/bpai-consulta-nefrologia](Claim-bpai-consulta-nefrologia.md), [Claim/claim-aih-icc](Claim-claim-aih-icc.md), [Claim/claim-apac-hemodialise](Claim-claim-apac-hemodialise.md), [Claim/producao-apac-hemodialise](Claim-producao-apac-hemodialise.md) and [Claim/producao-oci-mama](Claim-producao-oci-mama.md)
* [UsageContextType](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html): [ProtocoloOCIIC](PlanDefinition-protocolo-oci-ic.md) and [ProtocoloOCIMama](PlanDefinition-protocolo-oci-mama.md)
* [bedStatus](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html): [Clínica Médica, leito 01](Location-leito-clin-01.md), [Enfermaria, leito 07](Location-leito-origem-01.md), [LeitoRegulado](StructureDefinition-leito-regulado.md), [UTI Adulto, leito 01](Location-leito-uti-01.md) and [UTI Adulto, leito 02](Location-leito-uti-02.md)
* [identifierType](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0203.html): [Central de Regulação Ambulatorial Exemplo](Organization-org-central-regulacao.md), [Hospital Exemplo](Organization-org-executante.md)... Show 6 more, [Hospital Regional Exemplo](Organization-org-hospital-destino.md), [Patient/paciente-joao](Patient-paciente-joao.md), [Patient/paciente-maria](Patient-paciente-maria.md), [Secretaria Estadual de Saúde Exemplo](Organization-org-gestor-ses.md), [UBS Jardim Exemplo](Organization-org-ubs-solicitante.md) and [UPA 24h Exemplo](Organization-org-upa.md)
* [ActCode](http://terminology.hl7.org/7.1.0/CodeSystem-v3-ActCode.html): [Encounter/enc-alta-uti](Encounter-enc-alta-uti.md), [Encounter/enc-consulta-nefrologia](Encounter-enc-consulta-nefrologia.md)... Show 5 more, [Encounter/enc-destino-uti](Encounter-enc-destino-uti.md), [Encounter/enc-hemodialise](Encounter-enc-hemodialise.md), [Encounter/enc-oci-mama](Encounter-enc-oci-mama.md), [Encounter/enc-origem-enfermaria](Encounter-enc-origem-enfermaria.md) and [Encounter/enc-reserva-clinico](Encounter-enc-reserva-clinico.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "br.org.hsl.inspirarira",
  "language" : "pt-BR",
  "url" : "http://fhir.hsl.org.br/ig/inspirarira/ImplementationGuide/br.org.hsl.inspirarira",
  "version" : "0.1.0",
  "name" : "InspiraRIRA",
  "title" : "Guia de Implementação InspiraRIRA",
  "status" : "draft",
  "date" : "2026-10-01T16:52:20-03:00",
  "publisher" : "Hospital Sírio-Libanês",
  "contact" : [{
    "name" : "Hospital Sírio-Libanês",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.hospitalsiriolibanes.org.br"
    }]
  }],
  "description" : "Guia de Implementação FHIR R4 do projeto InspiraRIRA. Refatora o RIRA (Regulação Assistencial da RNDS) para o workflow nativo ServiceRequest, Task, Appointment e Encounter, com Claim/ClaimResponse restritos à camada administrativo-financeira da APAC/AIH.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "BR",
      "display" : "Brazil"
    }]
  }],
  "packageId" : "br.org.hsl.inspirarira",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.2.0"
  },
  {
    "id" : "brcore",
    "uri" : "https://br-core.saude.gov.br/fhir/ImplementationGuide/br.gov.saude.br-core.fhir",
    "packageId" : "br.gov.saude.br-core.fhir",
    "version" : "1.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.hsl.org.br/ig/inspirarira/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "http://fhir.hsl.org.br/ig/inspirarira/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-consulta-nefrologia.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-consulta-nefrologia"
      },
      "name" : "A1. Pedido de consulta em nefrologia",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-appt-consulta-nefrologia-falta.html"
      }],
      "reference" : {
        "reference" : "Appointment/appt-consulta-nefrologia-falta"
      },
      "name" : "A2. Primeiro agendamento, com falta",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-appt-consulta-nefrologia.html"
      }],
      "reference" : {
        "reference" : "Appointment/appt-consulta-nefrologia"
      },
      "name" : "A3. Reagendamento, realizado",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-regulacao-consulta.html"
      }],
      "reference" : {
        "reference" : "Task/task-regulacao-consulta"
      },
      "name" : "A4. Regulação do acesso concluída e executada",
      "description" : "A falta em A2 não reinicia o pedido: a tarefa voltou à fila preservando a data de entrada e gerou o reagendamento A3.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-consulta-nefrologia.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-consulta-nefrologia"
      },
      "name" : "A5. Consulta realizada",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-bpai-consulta-nefrologia.html"
      }],
      "reference" : {
        "reference" : "Claim/bpai-consulta-nefrologia"
      },
      "name" : "A6. Produção em BPA-I",
      "description" : "Registro da produção da consulta regulada. BPA-I dispensa autorização prévia.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-agendamento-regulacao.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/agendamento-regulacao"
      },
      "name" : "Agendamento de Regulação Assistencial",
      "description" : "Agendamento resultante da regulação. Só DEVE ser criado quando houver proposta de data, local e serviço. Os estados booked, fulfilled, cancelled e noshow substituem os slices event:booked, event:attended, event:cancelled e event:absence do RIRA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-hemodialise.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-hemodialise"
      },
      "name" : "B1. Pedido de hemodiálise",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-coverage-sus-arranjo-publico.html"
      }],
      "reference" : {
        "reference" : "Coverage/coverage-sus-arranjo-publico"
      },
      "name" : "B2. Arranjo público SUS (PPI)",
      "description" : "Coverage que representa o arranjo público de custeio e o gestor responsável. Não é plano individual e não condiciona o direito universal. Perfil BR Public Funding Arrangement fica para versão futura.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-claim-apac-hemodialise.html"
      }],
      "reference" : {
        "reference" : "Claim/claim-apac-hemodialise"
      },
      "name" : "B3. Solicitação de APAC",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-claimresponse-apac-hemodialise.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/claimresponse-apac-hemodialise"
      },
      "name" : "B4. APAC emitida",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-appt-hemodialise.html"
      }],
      "reference" : {
        "reference" : "Appointment/appt-hemodialise"
      },
      "name" : "B5. Primeira sessão, realizada",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-autorizacao-hemodialise.html"
      }],
      "reference" : {
        "reference" : "Task/task-autorizacao-hemodialise"
      },
      "name" : "B6. Autorização regulatória concluída",
      "description" : "A autorização acontece na Task: dimensões avaliadas, decisão e protocolo. A ClaimResponse da APAC é um produto da decisão, referenciado em output.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-hemodialise.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-hemodialise"
      },
      "name" : "B7. Atendimento realizado",
      "description" : "A existência do Encounter é a evidência do atendimento. Substitui event:attended sem duplicar o RAC.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-producao-apac-hemodialise.html"
      }],
      "reference" : {
        "reference" : "Claim/producao-apac-hemodialise"
      },
      "name" : "B8. Produção da APAC",
      "description" : "Produção ligada à autorização (insurance.preAuthRef e related.claim) e ao cuidado executado (item.encounter).",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-usg-abdome.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-usg-abdome"
      },
      "name" : "C1. Pedido de ultrassonografia com informação insuficiente",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-regulacao-usg-pendencia.html"
      }],
      "reference" : {
        "reference" : "Task/task-regulacao-usg-pendencia"
      },
      "name" : "C2. Devolução por pendência documental",
      "description" : "Devolução é pendência regulatória (Task on-hold), não negativa financeira.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-consulta-urologia-excluida.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-consulta-urologia-excluida"
      },
      "name" : "C3. Pedido retirado após revisão",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-regulacao-urologia-negada.html"
      }],
      "reference" : {
        "reference" : "Task/task-regulacao-urologia-negada"
      },
      "name" : "C4. Negativa por ausência de indicação",
      "description" : "Negativa com dimensão, motivo, responsável e protocolo, passível de recurso (nova Task com partOf).",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-censo-leitos.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/censo-leitos"
      },
      "name" : "Censo de Leitos",
      "description" : "Situação dos leitos de um estabelecimento num instante, estratificada por especialidade de leito do CNES. Calculado a partir dos LeitoRegulado e das InternacaoRegulada.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-central-regulacao.html"
      }],
      "reference" : {
        "reference" : "Organization/org-central-regulacao"
      },
      "name" : "Complexo regulador",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PlanDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PlanDefinition-protocolo-oci-mama.html"
      }],
      "reference" : {
        "reference" : "PlanDefinition/protocolo-oci-mama"
      },
      "name" : "D1. Protocolo da OCI de avaliação diagnóstica inicial de câncer de mama",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItemDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ChargeItemDefinition-regra-reembolso-oci-mama.html"
      }],
      "reference" : {
        "reference" : "ChargeItemDefinition/regra-reembolso-oci-mama"
      },
      "name" : "D2. Regra de reembolso da OCI de câncer de mama",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-oci-mama.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-oci-mama"
      },
      "name" : "D3. Pedido da OCI",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Appointment"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Appointment-appt-oci-mama.html"
      }],
      "reference" : {
        "reference" : "Appointment/appt-oci-mama"
      },
      "name" : "D4. Agendamento da OCI, realizado",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/agendamento-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-regulacao-oci-mama.html"
      }],
      "reference" : {
        "reference" : "Task/task-regulacao-oci-mama"
      },
      "name" : "D5. Regulação da OCI, com prazo alvo do protocolo",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-oci-mama.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-oci-mama"
      },
      "name" : "D6. Consulta da OCI realizada",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-producao-oci-mama.html"
      }],
      "reference" : {
        "reference" : "Claim/producao-oci-mama"
      },
      "name" : "D7. Produção da OCI",
      "description" : "Um item com o código da OCI e os componentes realizados em item.detail. A RegraReembolsoOCI avalia este Claim.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/producao-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-data-entrada-fila.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/data-entrada-fila"
      },
      "name" : "Data de Entrada na Fila",
      "description" : "Momento em que o pedido se tornou elegível e entrou na fila regulada. Preservada quando uma reserva expira e a tarefa volta à fila, ou quando uma nova etapa substitui a anterior (seção 7.3 do guia do GT). Difere de ServiceRequest.authoredOn (autoria do pedido) e de Task.authoredOn (criação da etapa).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condicao-drc.html"
      }],
      "reference" : {
        "reference" : "Condition/condicao-drc"
      },
      "name" : "Doença renal crônica",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PlanDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PlanDefinition-protocolo-oci-ic.html"
      }],
      "reference" : {
        "reference" : "PlanDefinition/protocolo-oci-ic"
      },
      "name" : "E1. Protocolo da OCI de insuficiência cardíaca",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/protocolo-oci"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ChargeItemDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ChargeItemDefinition-regra-reembolso-oci-ic.html"
      }],
      "reference" : {
        "reference" : "ChargeItemDefinition/regra-reembolso-oci-ic"
      },
      "name" : "E2. Regra de reembolso da OCI de insuficiência cardíaca",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/regra-reembolso-oci"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-executante.html"
      }],
      "reference" : {
        "reference" : "Organization/org-executante"
      },
      "name" : "Estabelecimento executante",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-origem-enfermaria.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-origem-enfermaria"
      },
      "name" : "F1a. Internação na origem, encerrada por transferência",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-leito-uti.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-leito-uti"
      },
      "name" : "F1b. Pedido de leito de UTI (transferência externa)",
      "description" : "O pedido nasce na internação de origem (encounter) e pede leito complementar de UTI.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-transporte-uti.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/transporte-uti"
      },
      "name" : "F1c. Transporte sanitário avançado",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/transporte-sanitario"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-destino-uti.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-destino-uti"
      },
      "name" : "F1d. Internação na UTI de destino",
      "description" : "dischargeDisposition 07 Permanência: o BR-Core exige o elemento antes da alta.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-leito-uti.html"
      }],
      "reference" : {
        "reference" : "Task/task-leito-uti"
      },
      "name" : "F1e. Regulação de leito concluída: paciente internado no destino",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-claim-aih-icc.html"
      }],
      "reference" : {
        "reference" : "Claim/claim-aih-icc"
      },
      "name" : "F1f. Solicitação de AIH",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/autorizacao-previa-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-claimresponse-aih-icc.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/claimresponse-aih-icc"
      },
      "name" : "F1g. AIH emitida",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/resposta-autorizacao-sus"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-leito-clinico.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-leito-clinico"
      },
      "name" : "F2a. Pedido de leito clínico",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-reserva-clinico.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-reserva-clinico"
      },
      "name" : "F2b. Reserva de leito clínico",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-leito-clinico.html"
      }],
      "reference" : {
        "reference" : "Task/task-leito-clinico"
      },
      "name" : "F2c. Leito reservado",
      "description" : "restriction.period.end marca o fim da reserva; se expirar, a tarefa volta a aguardando-leito sem perder a data de entrada.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-sr-vaga-zero.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/sr-vaga-zero"
      },
      "name" : "F3a. Pedido de leito de UTI a partir da UPA",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/requisicao-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Task"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Task-task-vaga-zero.html"
      }],
      "reference" : {
        "reference" : "Task/task-vaga-zero"
      },
      "name" : "F3b. Vaga zero",
      "description" : "Sem leito compatível disponível e com risco iminente, o regulador encaminha ao hospital de referência. A decisão tem responsável, motivo e justificativa.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/tarefa-regulacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-enc-alta-uti.html"
      }],
      "reference" : {
        "reference" : "Encounter/enc-alta-uti"
      },
      "name" : "F4. Internação encerrada com alta clínica",
      "description" : "Após a alta, o leito-uti-02 passa a H (higienização) e depois a U (livre).",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/internacao-regulada"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MeasureReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MeasureReport-censo-hre-20261001.html"
      }],
      "reference" : {
        "reference" : "MeasureReport/censo-hre-20261001"
      },
      "name" : "F5. Censo do Hospital Regional Exemplo",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/censo-leitos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-gestor-ses.html"
      }],
      "reference" : {
        "reference" : "Organization/org-gestor-ses"
      },
      "name" : "Gestor autorizador (SES)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-hospital-destino.html"
      }],
      "reference" : {
        "reference" : "Organization/org-hospital-destino"
      },
      "name" : "Hospital de destino",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-condicao-icc.html"
      }],
      "reference" : {
        "reference" : "Condition/condicao-icc"
      },
      "name" : "Insuficiência cardíaca descompensada",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-internacao-regulada.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/internacao-regulada"
      },
      "name" : "Internação Regulada",
      "description" : "Reserva e ocupação de leito resultante da regulação. Reserva = status planned com o leito em location.status reserved. Internação = in-progress com o leito active. Transferência interna (entre leitos do mesmo estabelecimento) é a troca de location dentro do mesmo Encounter. Transferência externa encerra este Encounter (desfecho Transferência) e abre outro no destino, regulado por nova Requisição.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-leito-clin-01.html"
      }],
      "reference" : {
        "reference" : "Location/leito-clin-01"
      },
      "name" : "Leito clínica geral 01 (livre, com reserva)",
      "description" : "A reserva não muda operationalStatus: o leito segue U e a reserva fica no Encounter planned.",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-leito-origem-01.html"
      }],
      "reference" : {
        "reference" : "Location/leito-origem-01"
      },
      "name" : "Leito clínico na origem",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-leito-regulado.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/leito-regulado"
      },
      "name" : "Leito Regulado",
      "description" : "Leito hospitalar disponível à regulação. Tipo e especialidade seguem os domínios do CNES. A situação operacional (livre, ocupado, higienização, bloqueado) usa a tabela HL7 v2-0116, nativa de Location.operationalStatus.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-leito-uti-01.html"
      }],
      "reference" : {
        "reference" : "Location/leito-uti-01"
      },
      "name" : "Leito UTI adulto tipo II 01 (ocupado)",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-leito-uti-02.html"
      }],
      "reference" : {
        "reference" : "Location/leito-uti-02"
      },
      "name" : "Leito UTI adulto tipo II 02 (higienização)",
      "exampleCanonical" : "http://fhir.hsl.org.br/ig/inspirarira/StructureDefinition/leito-regulado"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-local-origem.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/local-origem"
      },
      "name" : "Local de Origem",
      "description" : "Local de onde o paciente parte no transporte sanitário. ServiceRequest R4 só tem o local de realização (locationReference), usado aqui como destino. No R5 o recurso Transport resolve isso nativamente.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Measure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Measure-censo-leitos.html"
      }],
      "reference" : {
        "reference" : "Measure/censo-leitos"
      },
      "name" : "Medida do censo de leitos",
      "description" : "Contagem de leitos por situação, estratificada por especialidade de leito do CNES.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-paciente-joao.html"
      }],
      "reference" : {
        "reference" : "Patient/paciente-joao"
      },
      "name" : "Paciente João Souza",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-paciente-maria.html"
      }],
      "reference" : {
        "reference" : "Patient/paciente-maria"
      },
      "name" : "Paciente Maria da Silva",
      "description" : "Paciente usada em todos os cenários.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-prioridade-regulatoria.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/prioridade-regulatoria"
      },
      "name" : "Prioridade Regulatória",
      "description" : "Classe, escore e fatores componentes da prioridade clínica atribuída pela regulação. Task.priority (request-priority) só expressa urgência operacional e não comporta classe de protocolo, escore nem fatores de equidade.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PlanDefinition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PlanDefinition-protocolo-acesso-nefrologia.html"
      }],
      "reference" : {
        "reference" : "PlanDefinition/protocolo-acesso-nefrologia"
      },
      "name" : "Protocolo de acesso à nefrologia (exemplo)",
      "description" : "Semente do perfil BR Access Protocol (seção 6.1 do guia do GT). Define critérios, sem representar fila nem decisão.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-protocolo-oci.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/protocolo-oci"
      },
      "name" : "Protocolo de Oferta de Cuidados Integrados (OCI)",
      "description" : "Composição, obrigatoriedade dos procedimentos e prazo de conclusão de uma OCI do SUS. É artefato definicional: não representa fila, pedido nem decisão. A requisição da OCI aponta para ele em ServiceRequest.instantiatesCanonical.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-producao-sus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/producao-sus"
      },
      "name" : "Registro de Produção SUS (BPA-I, RAAS, APAC, AIH)",
      "description" : "Apresentação da produção ao SIA/SUS ou SIH/SUS depois da execução do cuidado. Cobre BPA-I e RAAS (sem autorização prévia) e a produção de APAC e AIH (ligada à autorização emitida). Cada item aponta para o Encounter executado.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-regra-reembolso-oci.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/regra-reembolso-oci"
      },
      "name" : "Regra de Reembolso de OCI",
      "description" : "Condições de pagamento e valor de referência de uma OCI do SUS. As condições (applicability) são avaliadas sobre o Registro de Produção SUS: procedimentos obrigatórios realizados, conclusão no prazo e habilitação do executante. Pagamento por pacote, não por procedimento isolado.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-requisicao-regulacao.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/requisicao-regulacao"
      },
      "name" : "Requisição de Regulação Assistencial",
      "description" : "Pedido clínico persistente submetido à regulação do acesso. Registra o que é solicitado, por quê, com que prioridade e com que apoio clínico, independentemente do canal de financiamento. Substitui BRRequisicaoRegulacaoAssistencial do RIRA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-resposta-autorizacao-sus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/resposta-autorizacao-sus"
      },
      "name" : "Resposta de Autorização SUS (APAC/AIH)",
      "description" : "Emissão, negativa ou crítica da APAC/AIH pelo gestor autorizador. Carrega o número e a validade da autorização. Estrutura alinhada ao perfil RespostaGuia (ClaimResponse) da ANS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-autorizacao-previa-sus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/autorizacao-previa-sus"
      },
      "name" : "Solicitação de Autorização SUS (APAC/AIH)",
      "description" : "Solicitação de APAC ou AIH ao gestor autorizador. Pertence à camada administrativo-financeira e NÃO substitui a Requisição nem a Tarefa de Regulação. Estrutura alinhada aos perfis Guia (Claim) da ANS, sem dependência do pacote ANS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-tarefa-regulacao.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/tarefa-regulacao"
      },
      "name" : "Tarefa de Regulação Assistencial",
      "description" : "Etapa de trabalho regulatório sobre uma Requisição de Regulação: regulação do acesso (qualificação, priorização, alocação e agendamento), autorização regulatória, reavaliação, recurso e contrarreferência. É onde a decisão regulatória acontece, com dimensão, resultado, motivo, responsável e protocolo. Substitui os slices de Composition.event do RIRA.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-transporte-sanitario.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/transporte-sanitario"
      },
      "name" : "Transporte Sanitário",
      "description" : "Pedido de transporte do paciente entre estabelecimentos, vinculado à requisição de internação ou transferência.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-ubs-solicitante.html"
      }],
      "reference" : {
        "reference" : "Organization/org-ubs-solicitante"
      },
      "name" : "UBS solicitante",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-org-upa.html"
      }],
      "reference" : {
        "reference" : "Organization/org-upa"
      },
      "name" : "UPA de origem",
      "exampleBoolean" : true
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Início",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "fluxo.html"
        }],
        "nameUrl" : "fluxo.html",
        "title" : "Fluxo regulatório",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "autorizacao.html"
        }],
        "nameUrl" : "autorizacao.html",
        "title" : "Autorização na Task",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "leitos.html"
        }],
        "nameUrl" : "leitos.html",
        "title" : "Regulação de leitos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapeamento-rira.html"
        }],
        "nameUrl" : "mapeamento-rira.html",
        "title" : "Mapeamento RIRA",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "debitos-tecnicos.html"
        }],
        "nameUrl" : "debitos-tecnicos.html",
        "title" : "Débitos técnicos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "recomendacoes-rnds.html"
        }],
        "nameUrl" : "recomendacoes-rnds.html",
        "title" : "Recomendações à RNDS",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "transicao.html"
        }],
        "nameUrl" : "transicao.html",
        "title" : "Transição e convivência",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
