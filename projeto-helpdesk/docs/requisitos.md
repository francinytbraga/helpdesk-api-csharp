# Documentação de Requisitos e Regras de Negócio - Helpdesk

Este documento descreve os requisitos funcionais, não funcionais e as regras de negócio para o desenvolvimento do sistema de Helpdesk.

---

## 1. Requisitos Funcionais (RF)
O sistema DEVE implementar as seguintes funcionalidades:

- **RF01**: O sistema deve permitir o cadastro, edição, exclusão e listagem de usuários (`usuarios`).
- **RF02**: O sistema deve permitir o gerenciamento completo de patrimônios/ativos da empresa (`patrimonios`).
- **RF03**: O usuário autenticado deve conseguir abrir um novo chamado (`chamados`), informando título, descrição e vinculando um patrimônio.
- **RF04**: O sistema deve permitir o controle do ciclo de vida do chamado através das situações: `pendente`, `em andamento` e `finalizado`.
- **RF05**: O sistema deve permitir que técnicos ou administradores atualizem o status e os dados dos chamados.

---

## 2. Requisitos Não Funcionais (RNF)
Requisitos técnicos e de qualidade da aplicação:

- **RNF01**: As senhas dos usuários devem ser armazenadas de forma segura utilizando criptografia hash (`senha_hash`).
- **RNF02**: O banco de dados relacional (MySQL) deve garantir integridade referencial utilizando chaves estrangeiras (`Foreign Keys`) entre chamados, usuários e patrimônios.
- **RNF03**: A API backend deve ser desenvolvida em C# utilizando o ecossistema .NET e arquitetura REST.
- **RNF04**: O código-fonte deve ser versionado utilizando Git e hospedado no GitHub.

---

## 3. Regras de Negócio (RN)
Restrições e lógicas de funcionamento do sistema:

- **RN01**: Um chamado (`chamados`) deve obrigatoriamente estar vinculado a um usuário criador (`fk_usuarios_id_usuario`) e a um patrimônio cadastrado (`fk_patrimonios_id_patrimonio`).
- **RN02**: Os campos `cpf`, `e-mail` e `telefone` da tabela de usuários devem ser estritamente únicos no sistema.
- **RN03**: Um chamado com a situação `finalizado` não deve permitir a alteração de sua descrição principal.

---

## 4. Atores e Casos de Uso (Resumo)

* **Usuário Comum**:
  - Realizar cadastro e login no sistema.
  - Abrir e acompanhar seus próprios chamados de suporte.
  - Consultar patrimônios disponíveis.

* **Técnico / Administrador**:
  - Gerenciar o cadastro de patrimônios.
  - Visualizar todos os chamados abertos no sistema.
  - Atualizar o status dos chamados (`pendente` $\rightarrow$ `em andamento` $\rightarrow$ `finalizado`).