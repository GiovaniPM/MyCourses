---
title: "[Nome do projeto]"
description: "[Descrição do projeto]"
keywords: ["key 1", "key 2", "key 3"]
author: "[Nome do Autor]"
---

# $$\Huge\mathbf{Requisitos}\ \newline\color{Blue}\Large\mathbf{[Nome\ do\ projeto]}$$

**Histórico de Revisões**

|**Nome**|**Data**|**Observações**|**Versão**|
| :- | :- | :- | :- |
|[Nome do Autor]|[Data]|Especificação Inicial de Requisitos|1|
|[Nome do Autor]|[Data]|[Observações]|[#]|
|||||
|||||

*© [Proprietário do Projeto]* – *CONFIDENCIAL*

<a name="_toc"></a>**Índice**

1. [Informações de contexto](#_toc404016826)
1. [Vocabulário/abreviações/convenções](#_toc404016827)
1. [Visão geral do produto](#_toc404016828)
1. [Mercado alvo e usuários](#_toc404016829)
1. [Descrição detalhada do produto](#_toc404016830)
    1. [Conteúdo / Dados](#_toc404016831)
    1. [Software](#_toc404016832)
    1. [Ferramentas de back-office (edição e administração)](#_toc404016833)
    1. [Sistema de pagamento e autenticação de usuários](#_toc404016834)
    1. [Anúncios](#_toc404016835)
    1. [Diretrizes de design gráfico](#_toc404016836)
    1. [Acessibilidade](#_toc404016837)
    1. [Plataformas e configurações alvo](#_toc404016838)
    1. [Desempenho](#_toc404016839)
1. [Testes e aceitação](#_toc404016840)
1. [Meio de entrega e instalação](#_toc404016841)
1. [Processos e logística](#_toc404016842)
1. [Documentação e código-fonte](#_toc404016843)
1. [Treinamento](#_toc404016844)
1. [Cronograma e marcos](#_toc404016845)
1. [Riscos, dependências e outras questões](#_toc404016846)
1. [Qualquer outra informação relevante](#_toc404016847)
1. [Referências](#_toc404016848)

# <a name="_toc404016826"></a>**Informações de Contexto**[↩︎](#_toc)

Descreva o **contexto e os objetivos do projeto**, apresente o **proprietário do projeto** (empresa ou organização) e **outros stakeholders**, bem como uma visão geral do **modelo de negócio** envolvido (na medida em que influencia os requisitos do produto a ser criado).

Inclua qualquer **outra informação relevante** que julgue útil (para colocar o projeto/produto em perspectiva).

# <a name="_toc404016827"></a>**Vocabulário/abreviações/convenções**[↩︎](#_toc)

Forneça uma lista organizada de **vocabulário específico** (com definições precisas), **abreviações** e quaisquer **outras convenções** utilizadas neste documento, a fim de **evitar qualquer ambiguidade e interpretação equivocada**.

# <a name="_toc404016828"></a>**Visão geral do produto**[↩︎](#_toc)

Forneça uma **descrição resumida** do produto, com uma **representação gráfica simples** se possível, como uma introdução às informações mais detalhadas e ilustrações que serão fornecidas nas seções subsequentes da especificação.

Aborde o “**problema**” que o produto pretende resolver, a **solução proposta** e os **benefícios** esperados para os usuários.

Note que esta seção deve delinear claramente **o escopo do projeto**, e declarar o que está “**fora de escopo**” (dentro de limites razoáveis!).

# <a name="_toc404016829"></a>**Mercado alvo e usuários**[↩︎](#_toc)

Descreva o mercado alvo e os usuários do produto. A **tipologia dos usuários** pode de fato influenciar a funcionalidade e o design do produto.

Algumas funções e recursos de um produto podem estar disponíveis para todos os usuários, enquanto outros podem ser reservados para certas **categorias de usuários**, por exemplo administradores, webmasters ou editores.

O design de um produto pode precisar levar em consideração a **faixa etária dos usuários** (crianças, adultos, idosos…) ou o **segmento de mercado** ao qual pertencem (público geral, negócios, educação, governo…).

# <a name="_toc404016830"></a>**Descrição detalhada do produto**[↩︎](#_toc)

## <a name="_toc404016831"></a>***Conteúdo / Dados***[↩︎](#_toc)

Descreva do que consistirá o conteúdo do produto (em oposição ao “container”, ou seja, o software, que será abordado na próxima seção).

O conteúdo precisa ser descrito no nível de detalhe necessário para o desenvolvimento do produto.

Você pode precisar dedicar uma seção deste documento ou um apêndice à especificação do “**formato de entrega de dados**”, ou seja, o formato em que os dados serão entregues pelo provedor de conteúdo ao desenvolvedor de software, se tal formato já tiver sido determinado.

Se o conteúdo for esperado como **multilíngue**, as línguas a serem suportadas e possíveis restrições de conjunto de caracteres (fontes, codificação) devem ser claramente especificadas. Mais geralmente, diretrizes claras e abrangentes para **localização** devem ser fornecidas.

Pode ser útil agrupar elementos de conteúdo por **tipo**, cada tipo possivelmente tratado como um subprojeto editorial específico pelo proprietário do projeto / provedor de conteúdo.

Para cada tipo de dado, o **número** (aproximado) de itens, seu **tamanho** estimado (“pegada”) e **formato** devem ser documentados, se tais informações estiverem disponíveis.

Conteúdo visível para o usuário final é geralmente apenas uma parte do conjunto completo de dados em um produto. **Tags** e, mais geralmente, **metadados** são geralmente necessários, por exemplo, para pesquisa (índices), para exibição de conteúdo (folhas de estilo, etc.), bem como para links entre elementos de conteúdo.

Não se esqueça de especificar conteúdos que podem ser chamados de “**secundários**” ou “**acessórios**” mas que são **nevertheless importantes** e devem ser levados em consideração para fins editoriais e de design/desenvolvimento/integração.

Esse conteúdo pode ser, por exemplo: texto de ajuda, créditos, informações de licenciamento e outras informações legais, termos e condições de vendas, informações de contato, etc.

No caso de uma aplicação “estática” (por exemplo, um site não dinâmico), as informações sobre o conteúdo podem ser complementadas com uma indicação do número e tamanho das “páginas” (ou “telas”).

Se aplicável, a especificação deve também abordar **atualizações e adições de conteúdo**: quais áreas/itens de conteúdo são passíveis de modificação ou expansão, em que medida e com que frequência.

Para um site, páginas “**holding**” mais ou menos simples podem ser necessárias, seu conteúdo sendo destinado a “despertar o apetite” dos visitantes antes que o produto final vá realmente para o ar. Essas páginas também precisam ser mencionadas nesta especificação de requisitos.

## <a name="_toc404016832"></a>***Software***[↩︎](#_toc)

Forneça uma **descrição exaustiva, mas de alto nível** do software, que deve abranger **todas as suas funções e recursos**, bem como as **principais características de sua interface de usuário**.

O objetivo aqui é permitir que os leitores da especificação compreendam claramente o que o software deve alcançar. Nesse sentido, uma **representação gráfica** da funcionalidade do software (e possivelmente uma interface de usuário simulada), bem como **metáforas** evocativas, podem ajudar a tornar um longo texto narrativo mais fácil de entender.

Você também pode querer incluir nesta seção um conjunto abrangente de chamadas “**histórias de usuário**” ou “**casos de uso**”, que são descrições curtas das funções e recursos do produto do ponto de vista de um usuário (ou categoria de usuário).

Se possível, classifique as funções e recursos por **prioridade**, por exemplo, em dois grupos: “**essencial**” e “**desejável**” (ou seja, “desejável, mas não absolutamente necessário”).

Documente também qualquer **evolução** previsível das funções e recursos do software (ou seja, versões futuras do produto), bem como qualquer necessidade de **subconjuntos** do produto ou **subprodutos**.

## <a name="_toc404016833"></a>***Ferramentas de back-office (edição e administração)***[↩︎](#_toc)

Descreva as **ferramentas de edição** que precisam ser fornecidas para permitir que os **editores** **gerenciem conteúdo** (entrada, modificação, publicação de dados e metadados, etc.) de forma simples e eficiente, **sem** qualquer necessidade de ajuda dos **desenvolvedores**.

Descreva também quaisquer **ferramentas de administração** (para administradores ou webmasters) que precisam ser fornecidas como parte do “back office” (ou "back end").

## <a name="_toc404016834"></a>***Sistema de pagamento e autenticação de usuários***[↩︎](#_toc)

O uso do produto a ser desenvolvido pode envolver um sistema de pagamento. O proprietário do projeto pode já ter escolhido um sistema (PayPal, SWREG, etc.) ou pode deixar a questão aberta para discussão. De qualquer forma, o **processo de pagamento** e o **mecanismo de autenticação de usuários** necessário devem ser documentados aqui, junto com a especificação dos itens de informação que precisam ser capturados e armazenados em alguma forma de banco de dados (por exemplo, informações do cliente, como nome, endereço, e-mail, login, senha, etc.).

Se relevante, especifique a necessidade de um mecanismo de “**single sign-on**” (SSO) para evitar que os usuários tenham que se identificar várias vezes, por exemplo, em uma situação em que um aplicativo web que requer autenticação é acessado via um site que também requer autenticação.

## <a name="_toc404016835"></a>***Anúncios***[↩︎](#_toc)

Se anúncios aparecerem no produto (por exemplo, em um site), suas **dimensões e posição** desejadas na interface devem ser especificadas aqui, bem como qualquer requisito ou sugestão referente ao **mecanismo de feed de anúncios** (por exemplo, o uso de um “servidor de anúncios”).

## <a name="_toc404016836"></a>***Diretrizes de design gráfico***[↩︎](#_toc)

Se diretrizes ou recomendações de design gráfico da interface do usuário estiverem disponíveis, elas devem ser documentadas aqui.

A **distribuição de funções** nesta área também deve ser claramente indicada. A responsabilidade pelo design gráfico pode ser dada ao desenvolvedor do software ou pode ser mantida pelo proprietário do projeto, que pode optar por terceirizar o trabalho para uma agência especializada.

Qualquer necessidade ou preferência por **fontes e tamanhos de fontes** também deve ser documentada.

Deve-se mencionar **logotipos ou outros itens relacionados à identidade** (normalmente fornecidos pelo proprietário do projeto) que devem ser exibidos na interface do usuário em locais específicos.

## <a name="_toc404016837"></a>***Acessibilidade***[↩︎](#_toc)

Especifique quaisquer requisitos de conformidade do produto com os padrões de acessibilidade (por exemplo, W3C/WAI).

## <a name="_toc404016838"></a>***Plataformas e configurações alvo***[↩︎](#_toc)

Descreva os ambientes de hardware e software nos quais o produto deve funcionar, bem como as configurações mínimas necessárias para o produto funcionar corretamente.

## <a name="_toc404016839"></a>***Desempenho***[↩︎](#_toc)

Se relevante, especifique a velocidade mínima, a taxa de transferência ou, de forma mais geral, o desempenho necessário do produto a ser desenvolvido, pelo menos no que diz respeito às principais funções. Sempre que possível, indique quais **benchmarks detalhados** serão usados para medir o grau de alcance dos objetivos de desempenho.

# <a name="_toc404016840"></a>**Testes e aceitação**[↩︎](#_toc)

Especifique* como o produto será testado nas várias fases de desenvolvimento. Os **testes de aceitação final** geralmente usam a especificação de requisitos e as especificações de design funcional e de interface do usuário (em seu estado final aprovado) como o “padrão” final.

Os processos de teste intermediário e final precisam ser especificados em termos da natureza dos testes e dos **critérios de aceitação do produto**.

Para aplicativos de negócios e, particularmente, para projetos complexos de sistemas de informação (IS), fases específicas de teste podem ser exigidas pelo proprietário do projeto, caso em que precisam ser documentadas em detalhes, por exemplo:

- uma fase de “**testes de aceitação operacional (OAT)**” (comprimento a ser especificado), às vezes chamada de “**testes de prontidão operacional**”, destinada a determinar se o produto atende aos requisitos em uma situação da vida real, mas em uma escala relativamente pequena, antes de ser totalmente implementado e colocado em serviço para todos os seus usuários-alvo;

- uma fase de “**verificação de saúde operacional (OHC)**” (comprimento a ser especificado), destinada a verificar se o produto atende aos requisitos após ser totalmente implementado e colocado em serviço regular e irrestrito.

Se **ferramentas de teste automáticas** forem necessárias, elas devem ser especificadas nesta seção como ferramentas a serem desenvolvidas ou compradas e possivelmente personalizadas.

# <a name="_toc404016841"></a>**Meio de entrega e instalação**[↩︎](#_toc)

Especifique o meio (ou meios) no qual o produto deve ser entregue, bem como os requisitos de instalação e possíveis opções.

Esta seção também pode incluir quaisquer requisitos relativos à **proteção contra cópia** e **gestão de direitos digitais** (DRM).

# <a name="_toc404016842"></a>**Processos e logística**[↩︎](#_toc)

Na medida em que façam parte do projeto, processos e logística precisam ser cobertos nesta seção da especificação de requisitos.

De fato, a operação de certas aplicações requer a execução de processos (por exemplo, um fluxo de trabalho específico para a conclusão de tarefas específicas) e a disponibilidade de logística adequada (por exemplo, o armazenamento e o envio de mercadorias encomendadas de um site).

# <a name="_toc404016843"></a>**Documentação e código-fonte**[↩︎](#_toc)

Especifique quaisquer requisitos do proprietário do projeto em relação à documentação do software e à documentação para administradores, webmasters, pessoal de suporte técnico e usuários.

Também especifique qualquer requisito em relação à **transferência de propriedade** do código-fonte (e a transferência do próprio código-fonte) para o proprietário do projeto após a conclusão do projeto.

# <a name="_toc404016844"></a>**Treinamento**[↩︎](#_toc)

Especifique qualquer necessidade de treinamento, bem como material de treinamento, a ser entregue pela entidade de implementação do projeto para administradores, pessoas de suporte, usuários, etc.

# <a name="_toc404016845"></a>**Cronograma e marcos**[↩︎](#_toc)

Documente aqui ou em um anexo o cronograma preliminar do projeto e os principais marcos relacionados aos **entregáveis** do projeto que podem ser impostos pelo proprietário do projeto.

# <a name="_toc404016846"></a>**Riscos, dependências e outras questões**[↩︎](#_toc)

Mencione aqui quaisquer riscos, dependências e outras questões relevantes que possam ter sido identificadas nesta fase de preparação do projeto, juntamente com quaisquer recomendações de ações ou alternativas que possam reduzir a extensão e o impacto desses riscos, dependências e questões.

# <a name="_toc404016847"></a>**Qualquer outra informação relevante**[↩︎](#_toc)

Documente aqui, ou em seções específicas a serem adicionadas a este documento de requisitos, quaisquer outros requisitos ou informações considerados relevantes e úteis no contexto do projeto específico em questão.

Por exemplo, adições podem abordar requisitos ambientais, de segurança e de proteção.

# <a name="_toc404016848"></a>**Referências**[↩︎](#_toc)

Adicione aqui as referências externas a este documento, como: sites, livros, vídeos, etc ...