# helpdesk-api-csharp
Sistema corporativo de Help Desk e Gestão de Chamados desenvolvido em C# (.NET) com SQL Server, autenticação JWT, controle de ativos e relatórios gerenciais.
<div align="center">

# 🚀 Enterprise Help Desk & ITSM Core (.NET)

<img src="https://img.shields.io/badge/Status-Em%20Desenvolvimento-blueviolet?style=for-the-badge&logo=git&logoColor=white" />
<img src="https://img.shields.io/badge/.NET-8.0-512BD4?style=for-the-badge&logo=.dotnet&logoColor=white" />
<img src="https://img.shields.io/badge/C%23-239120?style=for-the-badge&logo=csharp&logoColor=white" />
<img src="https://img.shields.io/badge/SQL%20Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white" />
<img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" />

<p align="center">
  <b>Um sistema corporativo robusto de gestão de chamados, ativos de TI e inteligência analítica para suporte técnico.</b>
</p>

</div>

---

## 💜 Sobre o Projeto

O **Enterprise Help Desk** nasceu com o objetivo de ir muito além do básico. Mais do que registrar problemas, este sistema foi arquitetado para atuar como uma ferramenta de **Governança de TI e Tomada de Decisão Estratégica**, unindo segurança de nível corporativo, rastreabilidade de ativos e automação de documentação.

---

## 🛠️ Tech Stack & Arquitetura

O ecossistema do projeto foi construído utilizando tecnologias modernas de mercado:

| Camada | Tecnologia / Ferramenta | Propósito |
| :--- | :--- | :--- |
| **Backend** | ![C#](https://img.shields.io/badge/-C%23-239120?logo=csharp&logoColor=white) / **.NET Core** | API RESTful orientada a objetos e segura. |
| **Banco de Dados** | ![SQL Server](https://img.shields.io/badge/-SQL%20Server-CC2927?logo=microsoft-sql-server&logoColor=white) | Persistência relacional com modelo normalizado. |
| **Mensageria** | ![RabbitMQ](https://img.shields.io/badge/-RabbitMQ-FF6600?logo=rabbitmq&logoColor=white) | Processamento assíncrono e filas em background. |
| **Segurança** | **JWT / BCrypt / RBAC** | Autenticação stateless, Hashing de senhas e papéis. |
| **Infraestrutura** | ![Docker](https://img.shields.io/badge/-Docker-2496ED?logo=docker&logoColor=white) | Containerização do ambiente de banco de dados. |

---

## 📋 Arquitetura e Modelagem do Sistema

> *O projeto segue rigorosamente as etapas de engenharia de software antes de qualquer linha de código.*

* **Modelagem Conceitual & Lógica:** Mapeamento relacional de Entidades (`Usuarios`, `Perfis`, `Chamados`, `Ativos`).
* **Diagramas UML:** Casos de Uso, Diagrama de Classes (com Herança de Perfis) e Diagrama de Sequência.
* **Dicionário de Dados:** Documentação detalhada de cada atributo e restrição do banco.

---

## 🔒 Camada de Segurança Implementada

* **Autenticação Baseada em Tokens:** Uso de *JSON Web Tokens (JWT)* para rotas protegidas.
* **Proteção de Credenciais:** Armazenamento seguro de senhas utilizando *BCrypt* com Salt.
* **Controle de Acesso por Papéis (RBAC):** Restrições granulares para os perfis *Solicitante*, *Técnico* e *Assistente*.
* **Resiliência e Proteção:** Mitigação de ataques com *Rate Limiting* em endpoints críticos.

---

## 📊 Principais Funcionalidades

- [x] **Abertura Dinâmica de Chamados:** Coleta de evidências (anexo de prints), escopo do erro e frequência.
- [x] **Gestão de Ativos de TI:** Vínculo de chamados a computadores e setores específicos.
- [x] **Geração Automática de Documentação:** Conversão de soluções de chamados fechados em artigos de base de conhecimento.
- [x] **Relatórios Gerenciais para Gestores:** Identificação de sazonalidade e gargalos sistêmicos (ex: picos em dias de fechamento).
- [x] **Logs de Auditoria:** Rastreabilidade completa de ações e alterações de status.

---

## 🚀 Como Executar o Projeto Localmente

Siga os passos abaixo para rodar o ambiente de desenvolvimento na sua máquina:

```bash
# 1. Clone o repositório
git clone [https://github.com/francinytbraga/helpdesk-api-csharp.git](https://github.com/francinytbraga/helpdesk-api-csharp.git)

# 2. Entre na pasta do projeto
cd helpdesk-api-csharp

# 3. Suba o ambiente de banco de dados via Docker
docker-compose up -d

# 4. Restaure as dependências e execute a API .NET
dotnet restore
dotnet run
