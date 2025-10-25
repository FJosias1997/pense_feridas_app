# Pense Feridas 🩺

<p align="center">
  <img alt="Linguagem" src="https://img.shields.io/badge/Language-Dart-00B4AB.svg?logo=dart&logoColor=white">
  <a href="https://flutter.dev/">
    <img alt="Framework" src="https://img.shields.io/badge/Framework-Flutter-02569B.svg?logo=flutter&logoColor=white">
  </a>
  <img alt="Status" src="https://img.shields.io/badge/Status-Concluído-success.svg">
  <img alt="Marco" src="https://img.shields.io/badge/Marco-Primeiro%20Projeto%20Flutter-informational.svg?logo=rocket">
  <br>
  <img alt="Pacotes" src="https://img.shields.io/badge/Packages-sqflite%20|%20flutter_speed_dial-blueviolet.svg">
</p>

Um aplicativo móvel desenvolvido em Flutter para auxiliar profissionais de enfermagem no manejo e tratamento de feridas oncológicas. O app permite criar fichas de pacientes, avaliar feridas e sugere condutas de tratamento com base nos dados inseridos.

## 📖 Sobre o Projeto

Este foi o meu primeiro projeto oficial desenvolvido com Flutter. Ele foi criado originalmente para o Trabalho de Conclusão de Curso (TCC) de Enfermagem de uma colega da Universidade Federal do Pará (UFPA).

Recentemente, o projeto foi totalmente refatorado. O código original, embora funcional, estava desatualizado e precisava de melhorias. Esta nova versão implementa uma arquitetura mais limpa, atualiza dependências e aplica melhores práticas de desenvolvimento em Flutter.

O objetivo principal do Pense Feridas é servir como uma ferramenta de bolso para enfermeiros, facilitando o registro sistemático de avaliações de feridas e fornecendo um guia rápido de condutas terapêuticas.

## ✨ Funcionalidades Principais

* **Cadastro de Fichas de Pacientes:** Salve registros de pacientes e suas avaliações.
* **Avaliação Detalhada de Feridas:** Um formulário completo com dropdowns para selecionar:
    * Complexidade
    * Localização Anatômica
    * Tipo de Exsudato e Volume
    * Tecidos, Bordas, Profundidade e mais.
* **Sugestão de Conduta:** Com base na avaliação preenchida, o app exibe uma "Terapia Proposta" com os passos recomendados para o cuidado da ferida.
* **Consulta Rápida:** Uma seção de "Artigos" com textos sobre Conceitos, Classificações e Complicações de feridas.
* **Armazenamento Local:** Todas as fichas são salvas diretamente no dispositivo usando `sqflite`.

## 📱 Demonstração Ao Vivo

![Adobe Express - Gravação de Tela 2025-10-25 às 17 14 12](https://github.com/user-attachments/assets/1ce30c0d-468f-4539-8b12-a2613e6e58eb)
![Adobe Express - Gravação de Tela 2025-10-25 às 17 15 45](https://github.com/user-attachments/assets/c0c6f2ec-3bd9-443b-a2bc-c25340e5fc6d)
![Adobe Express - Gravação de Tela 2025-10-25 às 17 14 56(1)](https://github.com/user-attachments/assets/dc3ba119-772a-4fe0-90f1-fa5f231637f2)

## 🛠️ Tecnologias Utilizadas

    Flutter: Framework principal para o desenvolvimento UI.

    sqflite: Para armazenamento local do banco de dados (fichas dos pacientes).

    flutter_speed_dial: Utilizado para o botão de ação flutuante (FAB) com múltiplas opções.

    Dart: Linguagem de programação base do Flutter.

## 📂 Estrutura do Projeto

O código-fonte está organizado dentro da pasta lib da seguinte maneira:

```
lib/
├── database/
│   └── ... (Lógica de conexão e queries com o SQFlite)
├── models/
│   └── cirurgico_model.dart (Modelo de dados para a ficha)
├── provider/
│   └── database_provider.dart (Gerenciamento de estado para o DB)
├── enums/
│   └── dropdowns_enum.dart (Enums para os campos de seleção)
├── extensions/
│   └── context_extensions.dart (Extensões úteis, ex: para navegação)
├── pages/
│   ├── avaliacao_feridas/ (Tela do artigo "Avaliação")
│   ├── complicacoes/ (Tela do artigo "Complicações")
│   ├── conceitos/ (Tela do artigo "Conceitos")
│   ├── ficha/ (Tela de visualização da ficha salva)
│   ├── form_cirurgico/ (Tela do formulário de cadastro)
│   └── home/ (Tela principal, lista as fichas)
├── strings/
│   └── condutas_strings_list.dart (Textos fixos das condutas)
├── theme/
│   └── ... (Arquivos de tema, cores, fontes)
├── utils/
│   └── app_utils.dart (Funções utilitárias)
├── widgets/
│   ├── blue_title/ (Widget de título padronizado)
│   ├── bottom_sheet/ (Widget da conduta)
│   ├── buttons/ (Widgets de botões)
│   ├── dialogs/ (Widgets de diálogo)
│   ├── drawer/ (Widget do menu lateral)
│   ├── dropdown/ (Widgets de dropdown)
│   ├── speed_dial/ (Widget do botão FAB)
│   ├── text_input/ (Widgets de campos de texto)
│   └── app_widget.dart (Widget raiz do MaterialApp)
└── main.dart (Ponto de entrada do aplicativo)
```

## 🧠 Lógica de Negócio: Geração de Condutas

O "cérebro" do aplicativo, responsável por sugerir o tratamento, está localizado no arquivo lib/utils/app_utils.dart, dentro da função getConduta(CirurgicoModel form).

Esta função opera com base em um conjunto de 13 regras de negócio pré-definidas:

    Ela recebe o modelo CirurgicoModel preenchido pelo usuário.

    Utiliza uma série de if/else if para comparar combinações específicas dos campos (como classificacao, tecidos, volumeexsudato, complexidade, etc.).

    Cada combinação que corresponde a uma regra de negócio retorna uma lista de strings (List<String>) específica.

    Essas listas de tratamento estão armazenadas no arquivo lib/strings/condutas_strings_list.dart (da conduta1 até conduta13).

    Se nenhuma das 13 combinações for satisfeita, o app retorna uma lista vazia e nenhuma conduta é sugerida.
    
Exemplo de regra:

```dart
// Exemplo da Conduta 1
if (form.classificacao! == Classificacao.primeiraIntencao.label &&
    form.complexidade! == Complexidade.simples.label) {
  conduta = condutas.conduta1;
}
```
## ⚠️ Problemas Conhecidos

    Assets de Imagens: As imagens originais usadas na seção de artigos (ex: "Avaliação de Feridas") foram perdidas. Atualmente, o app exibe um erro de "Asset not found" nesses locais. Novas imagens precisam ser adicionadas ao diretório assets/images/ para corrigir o problema.
    Lógica de Condutas Rígida (Hardcoded): A geração de condutas é basea em um bloco if/else estático com 13 regras. O app não possui um sistema dinâmico de regras. Se uma ficha não se encaixar perfeitamente em uma das 13 combinações, nenhuma conduta será gerada. Esta é uma grande oportunidade de melhoria para uma futura versão.

## 🚀 Como Executar o Projeto

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/FJosias1997/pense_feridas_app.git
    cd pense_feridas_app
    ```

2.  **Instale as dependências:**
    ```bash
    flutter pub get
    ```

3.  **Execute o aplicativo:**
    ```bash
    flutter run
    ```

## 👨‍💻 Autor

Desenvolvido por Josias Félix Studios.

