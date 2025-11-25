# ✈️ Sistema Especialista Híbrido de Viagens

Este projeto é um trabalho da disciplina de **Inteligência Artificial (9º Semestre da Engenharia)** e demonstra a integração entre a **Lógica Simbólica (Prolog)** e a **IA Generativa (Google Gemini)** para a recomendação de destinos turísticos.

O foco central é o Prolog como motor de inferência, garantindo a precisão e a validade de todas as sugestões.

---

## 🧠 Núcleo de Decisão: Prolog (A Fonte da Verdade)

O coração do sistema é construído em **Prolog**, operando como um motor de inferência confiável.

- **Modelagem de Conhecimento**: O predicado `destino/5` mapeia as preferências do usuário (Clima, Orçamento, Tipo e Duração) para um destino único.
- **Precisão Lógica**: O Prolog assegura que todas as regras da `base_viagem.pl` sejam respeitadas (ex: nunca sugerir um destino caro para um orçamento baixo).
- **Integração com Python**: A biblioteca `pyswip` cria uma ponte entre o motor de inferência Prolog e o servidor Python, permitindo rodar todo o sistema pelo terminal ou PowerShell sem abrir o SWI-Prolog diretamente.

---

## ✨ Camada de Conteúdo: Google Gemini (Enriquecimento)

Após a decisão do Prolog, o destino é enviado à **API do Google Gemini**:

- **Enriquecimento**: Gera uma descrição detalhada do destino, incluindo clima, dicas de viagem e atrações.
- **Apresentação**: Transforma o resultado lógico do Prolog em um guia turístico legível e persuasivo.

---

## 💻 Arquitetura e Tecnologia

| Componente        | Tecnologia           | Função                                                                 |
|------------------|-------------------|----------------------------------------------------------------------|
| Frontend          | HTML/CSS/Jinja    | Entrada de dados e layout do resultado (caso seja integrado em web). |
| Backend/Bridge    | Python (Flask)    | Orquestra o fluxo de dados, recebe inputs e gerencia chamadas à API. |
| Motor de Inferência | Prolog (via pyswip) | Aplica regras lógicas e retorna o destino final.                   |
| Conteúdo          | Google Gemini API | Gera descrições dinâmicas e contextuais.                             |

---

## 🚀 Como Rodar o Projeto pelo Python

### 1. Pré-requisitos

- **Python 3.13+**
- **SWI-Prolog** instalado ([download aqui](https://www.swi-prolog.org/Download.html))
- Bibliotecas Python: `Flask`, `pyswip`, `google-genai`

### 2. Instalação das dependências

Abra o **PowerShell** e execute:

```powershell
"C:/Users/maris/AppData/Local/Programs/Python/Python313/python.exe" -m pip install Flask pyswip google-genai
```

### 3. Configuração da API

No arquivo gemini_api.py, insira sua chave da API do Google Gemini:

API_KEY = "SUA_CHAVE_AQUI"
