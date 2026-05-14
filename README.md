# Documento de Especificação de Produto (PRD): Horário Global

---

## 1. Visão Geral do Produto
O **Horário Global** é um aplicativo móvel desenvolvido em **Flutter** que permite aos usuários consultar o horário atual em diversas cidades ao redor do mundo. O aplicativo consome dados de uma API externa para fornecer informações precisas sobre fuso horário, hora e localização.

## 2. Objetivos e Público-Alvo
* **Objetivo:** Fornecer uma interface simples e visualmente atraente para verificar horários globais.
* **Público-Alvo:** Viajantes, profissionais que trabalham com equipes internacionais e usuários em geral interessados em fusos horários.

---

## 3. Requisitos Funcionais

### 3.1 Consulta de Horário Mundial
* **Sincronização:** O app deve buscar dados de tempo real através da API `worldtimeapi.org`.
* **Identificação de Período:** O sistema deve distinguir entre "dia" e "noite" com base no horário local da cidade selecionada para ajustar a interface visual.

### 3.2 Navegação e Telas
* **Tela de Carregamento (Loading):** Inicialização do aplicativo e busca dos dados padrão antes de exibir a home.
* **Tela Principal (Home):** Exibição do horário atual, localização e um indicador visual de período (fundo dinâmico).
* **Seleção de Localização:** Uma lista de cidades pré-definidas onde o usuário pode escolher uma nova localização para atualizar a Home.

---

## 4. Especificações Técnicas

### 4.1 Stack Tecnológica
* **Linguagem:** Dart.
* **Framework:** Flutter.
* **Pacotes Adicionais:** * `http`: Para requisições assíncronas à API.
    * `intl`: Para formatação de datas e horas.

### 4.2 Arquitetura de Arquivos
O projeto está organizado nos seguintes módulos:

| Arquivo | Responsabilidade |
| :--- | :--- |
| `main.dart` | Configuração de rotas e inicialização do app. |
| `home.dart` | Interface principal que exibe os dados de tempo e localização. |
| `loading.dart` | Lógica de inicialização e tratamento da requisição inicial. |
| `choose_location.dart` | Interface de lista para seleção de diferentes cidades/países. |
| `world_time.dart` | Classe de serviço/modelo que encapsula a lógica de negócio e consumo de API. |

---

## 5. Experiência do Usuário (UX)
* **Interface Dinâmica:** O fundo da tela principal muda de cor/imagem dependendo se é dia ou noite na localidade selecionada.
* **Feedback de Carregamento:** Uso de indicadores visuais (Spinners) enquanto os dados da API são processados.

---

## 6. Roadmap de Melhorias
* [ ] **Busca Dinâmica:** Implementar uma barra de pesquisa na tela de seleção de locais.
* [ ] **Favoritos:** Permitir salvar uma lista de cidades favoritas para acesso rápido.
* [ ] **Suporte Offline:** Cachear o último horário consultado caso não haja conexão.

---

## 7. Dependências e Recursos
* **API Externa:** `http://worldtimeapi.org/api/timezone/`
* **Assets:** Imagens de fundo para representar `day.png` e `night.png` e imagens de bandeiras locais.
