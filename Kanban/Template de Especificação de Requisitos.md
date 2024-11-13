--- 
title: Escrevendo artigos
description: Tutorial para escrever artigos
author: Giovani Perotto Mesquita
ms.author: GIOVANIM
ms.service: https://github.com/GiovaniPM/MyCourses/blob/master/Articles/Articles.md
ms.topic: tutorial
ms.date: 11/11/2024
---

# $$\color{Blue} \Huge \mathbf{Requirements}\ \mathbf{Specification}\newline \color{Blue} \Large \mathbf{Project\ [ProjName]}$$

**Revision History**

|**Name**|**Date**|**Remarks**|**Version**|
| :- | :- | :- | :- |
|[AuthorName]|[Date]|Initial Requirements Specification|1|
|[AuthorName]|[Date]|[Remarks]|[#]|
|||||
|||||

*© [Project Owner]* – *CONFIDENTIAL*

<a name="_toc233432637"></a><a name="_toc233433656"></a><a name="_toc233433872"></a>

**Table of Contents**

1. [Background information](#_toc404016826)
1. [Vocabulary/abbreviations/conventions](#_toc404016827)
1. [Product overview](#_toc404016828)
1. [Target market and users](#_toc404016829)
1. [Detailed product description](#_toc404016830)
    1. [Content / Data](#_toc404016831)
    1. [Software](#_toc404016832)
    1. [Back-office (editing and administration) tools](#_toc404016833)
    1. [Payment system and user authentication](#_toc404016834)
    1. [Adverts](#_toc404016835)
    1. [Graphic design guidelines](#_toc404016836)
    1. [Accessibility](#_toc404016837)
    1. [Target platforms and configurations](#_toc404016838)
    1. [Performance](#_toc404016839)
1. [Testing and acceptance](#_toc404016840)
1. [Delivery medium and installation](#_toc404016841)
1. [Processes and logistics](#_toc404016842)
1. [Documentation and source code](#_toc404016843)
1. [Training](#_toc404016844)
1. [Schedule and milestones](#_toc404016845)
1. [Risks, dependencies and other issues](#_toc404016846)
1. [Any other relevant information](#_toc404016847)

# <a name="_toc404016826"></a>**Background information**

Describe the **context and objectives of the project**, present the **project owner** (company or organization) and **other stakeholders**, as well as an overview of the **business mode**l involved (insofar as it has an influence on the requirements of the product to be created).

Include any **other relevant information** that you judge useful (to put the project/product in perspective).

# <a name="_toc233433704"></a><a name="_toc233433920"></a><a name="_toc404016827"></a>**Vocabulary/abbreviations/conventions**

Provide an organized list of **specific vocabulary** (with precise definitions), **abbreviations** and any **other conventions** used in this document, in order to **avoid any ambiguity and misinterpretation**.

# <a name="_toc233433705"></a><a name="_toc233433921"></a><a name="_toc404016828"></a>**Product overview**

Provide a **summary description** of the product, with a **simple graphical representation** if possible, as an introduction to the more detailed information and illustrations that will be provided in subsequent sections of the specification.

Address the “**problem**” that the product is supposed to solve, the **proposed solution** and the **benefits** it is expected to provide to its users.

Note that this section should clearly **delineate the scope of the project**, and state what is “**outside scope**” (within reasonable limits!).

# <a name="_toc233433706"></a><a name="_toc233433922"></a><a name="_toc404016829"></a>**Target market and users**

Describe the target market and users of the product. The **typology of users** may indeed have an influence on the product’s functionality and design.

Some of the functions and features of a product may be available to all users, while others may be reserved for certain **categories of user**, for example administrators, webmasters or editors.

The design of a product may need to take into account the **age range of users** (children, adults, senior citizens…) or the **market segment** to which they belong (general public, business, education, government…).

# <a name="_toc404016830"></a>**Detailed product description**

## <a name="_toc233433707"></a><a name="_toc233433923"></a><a name="_toc404016831"></a>***Content / Data***

Describe what the content of the product will consist of (as opposed to the “container”, ie the software, which will be covered in the next section).

Content needs to be described at the level of detail required for product development.

You may need to dedicate a section of this document or an appendix to the specification of the “**data delivery format**”, ie the format in which data will be delivered by the content provider to the software developer, if such format has already been determined.

If content is expected to be **multilingual**, the languages to be supported and possible character set constraints (fonts, encoding) must be clearly specified. More generally, clear and comprehensive **guidelines for localization** should be provided.

It may be useful to group content elements by **type**, each type possibly treated as a specific editorial subproject by the project owner / content provider.

For each data type, the (approximate) **number** of items, their estimated **size** (“footprint”) and **format** should be documented, if such information is available.

Content that is visible to the end user is generally only part of the full set of data in a product. **Tags** and, more generally, **metadata** are usually required, for example for searching (indexes), for content display (style sheets, etc.), as well as for links between elements of content.

Do not forget to specify content that may be called “**secondary**” or “**ancillary**” but which is **nevertheless important** and has to be taken into consideration for both editorial and design/development/integration purposes.

Such content may be for example: help text, credits, licensing and other legal information, sales terms & conditions, contact information, etc.

In the case of a “static” application (eg a non-dynamic website), information regarding content may be complemented with an indication of the number and size of “pages” (or “screens”).

If applicable, the specification should also address **content updates and additions**: which areas/items of content are liable to be modified or expanded, to what extent and how frequently.

For a website, more or less simple “**holding pages**” may be required, their content being intended to “whet the appetite” of visitors before the final product actually goes online. Such pages also need to be mentioned in this requirements specification.

## <a name="_toc233433708"></a><a name="_toc233433924"></a><a name="_toc404016832"></a>***Software***

Provide a **high-level but exhaustive description** of the software, which should encompass **all of its functions and features**, as well as the **main characteristics of its user interface**.

The objective here is to enable readers of the specification to clearly understand what the software should achieve. In this respect, a **graphical representation** of the software’s functionality (and possibly a mock-up user interface), as well as evocative **metaphors**, may help to make a long narrative text easier to understand.

You may also want to feature in this section a comprehensive set of so-called “**user stories**” or “**use cases**”, which are short descriptions of product functions and features from the viewpoint of a user (or category of user),

If possible, rank functions and features by **priority**, for example in two groups: “**must-have**” and “**nice-to-have**” (ie “desirable but not absolutely necessary”).

Also document any foreseeable **evolution** of the software’s functions and features (ie future versions of the product), as well as any requirement for **subsets** of the product or **by-products**.

## <a name="_toc233433709"></a><a name="_toc233433925"></a><a name="_toc404016833"></a>***Back-office (editing and administration) tools***

Describe the **editing tools** that need to be provided to enable **editors** to **manage content** (data and metadata input, modification, publication, etc.) in a simple and efficient manner, **without** any need for help from **developers**.

Also describe any **administration tools** (for administrators or webmasters) that need to be provided as part of the “back office” (or "back end").

## <a name="_toc233433710"></a><a name="_toc233433926"></a><a name="_toc404016834"></a>***Payment system and user authentication***

Use of the product to be developed may involve a payment system. The project owner may have already chosen such a system (PayPal, SWREG, etc.) or may leave the issue open for discussion. However that may be, the **payment process** and required **user authentication mechanism** should be documented here, along with the specification of information items that need to be captured and stored in some form of database (eg customer information such as name, address, e-mail, login, password, etc.).

If relevant, specify the need for a “**single sign-on**” (SSO) mechanism to avoid users having to identify themselves several times, for example in a situation where a web application requiring authentication is accessed via a website which also requires authentication.

## <a name="_toc233433711"></a><a name="_toc233433927"></a><a name="_toc404016835"></a>***Adverts***

If adverts are to appear in the product (eg on a website), their desired **dimensions and position** in the interface should be specified here, as well as any requirement or suggestion regarding the **advert feed mechanism** (eg the use of an “ad server”).

## <a name="_toc233433712"></a><a name="_toc233433928"></a><a name="_toc404016836"></a>***Graphic design guidelines***

If user-interface graphic design guidelines or recommendations are available, they should be documented here.

The **distribution of roles** in this area should also be clearly indicated. Responsibility for graphic design may be given to the software developer or may be held by the project owner, who may choose to subcontract the work to a specialized agency.

Any requirement or preference for **fonts and font sizes** should also be documented.

Mention should be made of **logos or other identity-related items** (usually supplied by the project owner) which are to be displayed in the user interface in specific locations.

## <a name="_toc404016837"></a>***Accessibility***

Specify any requirements for compliance of the product with accessibility standards (eg W3C/WAI).

## <a name="_toc233433713"></a><a name="_toc233433929"></a><a name="_toc404016838"></a>***Target platforms and configurations***

Describe the hardware and software environments in which the product is expected to function, as well as minimum configurations required for the product to work properly.

## <a name="_toc233433714"></a><a name="_toc233433930"></a><a name="_toc404016839"></a>***Performance***

If relevant, specify the minimum speed, throughput or, more generally, the required performance of the product to be developed, at least as far as major functions are concerned. Whenever possible, indicate which **detailed benchmarks** will be used to measure the degree of achievement of the performance objectives.

# <a name="_toc404016840"></a>**Testing and acceptance**

Specify* how the product will be tested at the various stages of development. The **final acceptance** tests generally use the requirements specification and the functional and user-interface design specifications (in their final approved state) as the “ultimate” benchmark.

Intermediate and final testing processes need to be specified in terms of the nature of the tests and the **product acceptance criteria**.

For business applications and, particularly, for complex information system (IS) projects, specific testing phases may be required by the project owner, in which case they need to be documented in detail, for example:

- an “**operational acceptance testing (OAT)**” phase (length to be specified), sometimes called “**operational readiness testing**”, intended to determine whether the product meets requirements in a real-life situation, but on a relatively small scale, before it is fully deployed and put into service for all of its target users;

- an “**operational health check (OHC)**” phase (length to be specified), intended to verify that the product meets requirements after being fully deployed and put into unrestricted and regular service.

If **automatic testing tools** are required, they should be specified in this section as tools to be developed or purchased and possibly customized.

# <a name="_toc233433715"></a><a name="_toc233433931"></a><a name="_toc404016841"></a>**Delivery medium and installation**

Specify the medium (or media) on which the product is expected to be delivered, as well as installation requirements and possible options.

This section may also include any requirements concerning **copy protection** and **digital rights management** (DRM).

# <a name="_toc233433716"></a><a name="_toc233433932"></a><a name="_toc404016842"></a>**Processes and logistics**

Insofar as they are part of the project, processes and logistics need to be covered in this section of the requirements specification.

Indeed, the operation of certain applications requires the execution of processes (eg a particular workflow for the completion of specific tasks) and the availability of adequate logistics (eg the storage and shipment of goods ordered from a website). 

# <a name="_toc233433718"></a><a name="_toc233433934"></a><a name="_toc404016843"></a>**Documentation and source code**

Specify any requirements by the project owner concerning documentation of the software and documentation for administrators, webmasters, technical support personnel and users. 

Also specify any requirement concerning the **transfer of ownership** of the source code (and the transfer of the source code itself) to the project owner upon completion of the project.

# <a name="_toc404016844"></a>**Training**

Specify any requirement for training, as well as training material, to be delivered by the project implementation entity to administrators, support people, users, etc.

# <a name="_toc233433719"></a><a name="_toc233433935"></a><a name="_toc404016845"></a>**Schedule and milestones**

Document here or in an appendix the preliminary project schedule and major milestones relating to the project’s **deliverables** that may be imposed by the project owner.

<a name="_toc233433720"></a><a name="_toc233433936"></a>
# <a name="_toc404016846"></a>**Risks, dependencies and other issues**

Mention here any relevant risks, dependencies and other issues that may have been identified at this stage of project preparation, along with any recommendations for actions or alternatives that may reduce the extent and impact of such risks, dependencies and issues.

# <a name="_toc233433721"></a><a name="_toc233433937"></a><a name="_toc404016847"></a>**Any other relevant information**

Document here, or in specific sections to be added to this requirements document, any other requirements or information judged to be relevant and useful in the context of the particular project concerned.

For example, additions may concern environmental, safety and security requirements.