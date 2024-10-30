# Escrevendo artigos
_<sup>por Giovani Perotto Mesquita - 29/10/2024</sup>_

## <a name="_toc000"></a>Índice

1. [Introdução](#_toc001)
1. [Pré-requsitos](#_toc002)
1. [Documento](#_toc003)
   - [Estrutura](#_toc0031)
     - [Título](#_toc00311)
     - [Índice](#_toc00312)
     - [Conteúdo](#_toc00313)
       - [Capítulo](#_toc003131)
       - [Tópico](#_toc003132)
       - [Detalhe](#_toc003133)
       - [Texto](#_toc003134)

## <a name="_toc001"></a>Introdução[↩︎](#_toc000)

Neste artigo iremos sugerir um template para criação de artigos em [markdown](https://en.wikipedia.org/wiki/Markdown), que podem ser facilmente renderizados utilizando o vscode.

O nosso objetivo é do trazer uma alternativa grátis e que possa ser utilizado tanto online quanto offline, suportada por diversas plataformas e ferramentas.

## <a name="_toc002"></a>Pré-requsitos[↩︎](#_toc000)

Utilizaremos os seguintes requsitos de software, para escrever os artigos:

- [VS Code](https://code.visualstudio.com/download)
  - extension [Markdown Preview Enhanced](https://marketplace.visualstudio.com/items?itemName=shd101wyy.markdown-preview-enhanced)
  - extension [Markdown Preview Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)
  - extension [Markdown Checkboxes](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-checkbox)
  - extension [learn-markdown](https://marketplace.visualstudio.com/items?itemName=docsmsft.docs-markdown)
  - extension [Markdown+Math](https://marketplace.visualstudio.com/items?itemName=goessner.mdmath)
  - extension [PlantUML](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml)
  - extension [PlantUML - Simple Viewer](https://marketplace.visualstudio.com/items?itemName=well-ar.plantuml)
  - extension [Graphviz Preview](https://marketplace.visualstudio.com/items?itemName=EFanZh.graphviz-preview)
  - extension [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

Conhecimento (não mandatório) em:

  - [Markdown](https://en.wikipedia.org/wiki/Markdown)
  - [Plantuml](https://plantuml.com/)
  - [LaTEX](https://www.latex-project.org/)

## <a name="_toc003"></a>Documento[↩︎](#_toc000)

### <a name="_toc0031"></a>Estrutura[↩︎](#_toc003)

O artigo será estruturado de 4 partes:
- [Título](#_toc00311)
- [Índice](#_toc00312)
- [Conteúdo](#_toc00313)
- [Referências](#_toc00314)

Já o conteúdo poderá ser sub-dividido em:
- [Capítulo](#_toc003131)
- [Tópico](#_toc003132)
- [Detalhe](#_toc003133)

```plantuml
@startuml

[*] --> Título
Título --> Índice
Título : [[Articles.html#_toc00311]]
Índice --> Conteúdo
Índice : [[Articles.html#_toc00312]]

state Conteúdo {
    Capítulo : [[Articles.html#_toc003131]]
    Tópico : [[Articles.html#_toc003132]]
    Detalhe : [[Articles.html#_toc003133]]
    Texto : [[Articles.html#_toc003134]]
    
    state cap_top <<fork>>
    Capítulo --> cap_top
    cap_top --> Tópico : 0 ... n
    cap_top --> Texto : 0 ... 1
    
    state top_det <<fork>>
    Tópico --> top_det
    top_det --> Detalhe : 0 ... n
    top_det --> Texto : 0 ... 1
    
    Detalhe --> Texto : 1
}

Conteúdo --> Conteúdo : 1 ... n

Conteúdo --> Referências
Referências --> [*]
Referências : [[Articles.html#_toc00314]]

@enduml
```

#### <a name="_toc00311"></a>Título[↩︎](#_toc0031)

O __Título__ é uma frase que identifica o artigo, deve ser único entre os seus demais artigos, para evitar sobreposições. Também deve-se colocar a identificação do autor e a data que o mesmo foi redigido, bem como revisões posteriores e suas datas.

Sintaxe:
>```
># <<Nome do artigo>>
>_<sup>por <<redator do artigo>> - DD/MM/YYY</sup>_
>_<sup>rev. <<redator da revisão>> - DD/MM/YYY</sup>_
>```
Exemplo:
```
# Escrevendo artigos
_<sup>por Giovani Perotto Mesquita - 29/10/2024</sup>_
_<sup>rev. John Doe - 30/10/2024</sup>_
```

#### <a name="_toc00312"></a>Índice[↩︎](#_toc0031)

O índice de conteúdo é uma lista das partes de um artigo organizado pela ordem em que as partes aparecem. O mesmo possui relevância para uma acesso rápido a tôpicos do artigo.

Sintaxe:
>```
>1. [<<Capítulo/Tópico/Detalhe>>](#_tocnnn)
>```
Exemplo:
```
1. [Introdução](#_toc001)
1. [Pré-requsitos](#_toc002)
1. [Documento](#_toc003)
   - [Estrutura](#_toc0031)
     - [Título](#_toc00311)
     - [Índice](#_toc00312)
```

A ligação ao Capítulo/Tópico/Detalhe é efetuado quando da declaração do mesmo, através de um hyperlink (ex.: _toc001). Utilizaremos hyperlink para evitar problemas com acentuação e permitir apontamentos com o mesmo nome.

Sintaxe:
>```
>## <a name="_tocnnn"></a><<Capítulo/Tópico/Detalhe>>[↩︎](#_tocnnn)
>```
Exemplo:
```
## <a name="_toc001"></a>Introdução[↩︎](#_toc000)
## <a name="_toc002"></a>Pré-requsitos[↩︎](#_toc000)
## <a name="_toc003"></a>Documento[↩︎](#_toc000)
### <a name="_toc0031"></a>Estrutura[↩︎](#_toc003)
#### <a name="_toc00311"></a>Título[↩︎](#_toc0031)
#### <a name="_toc00312"></a>Índice[↩︎](#_toc0031)
 ...
```

Convencionamos que:

>Capítulo será iniciado com ```##```
>Tópico será iniciado com ```###```
>Detalhe será iniciado com ```###```

E que os hyperlinks serão numerados em ordem sequencial conforme a estrutura, por exemplo: se o capítulo for _toc001 o tópico filho se houver será _toc0011, o segundo será _toc0012, etc...

De mesma forma se o tópico tiver detalhe o mesmo será sequencial, exemplo o tópico _toc0011 o seu filho será _toc00111, _toc00112, etc ...

>```<a name="_tocnnn"></a><<Capítulo/Tópico/Detalhe>>```

Na declaração do Capítulo/Tópico/Detalhe iremos ter um apontamento para o nível anterior, ou seja:

```dos
detalhe --> tópico
tópico --> capítulo
capítulo --> índice
```

Sintaxe:
>```[↩︎](#_tocnnn)```

Outra convenção será que o hyperlink do índice será ```_toc000```, e que todos os capítulos irão apontar para ele na sua declaração.

Exemplo:
```
## <a name="_toc001"></a>Introdução[↩︎](#_toc000)
```

#### <a name="_toc00313"></a>Conteúdo[↩︎](#_toc0031)

#### <a name="_toc003131"></a>Capítulo[↩︎](#_toc00313)

#### <a name="_toc003132"></a>Tópico[↩︎](#_toc00313)

#### <a name="_toc003133"></a>Detalhe[↩︎](#_toc00313)

#### <a name="_toc003134"></a>Texto[↩︎](#_toc00313)

#### <a name="_toc00314"></a>Referências[↩︎](#_toc0031)