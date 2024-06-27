# **Biblioteca de Livros**

Este projeto é uma implementação de uma **Biblioteca** que permite adicionar e gerenciar livros, categorizando-os por **gênero**, **autor** e **título**. Além disso, é possível visualizar os livros cadastrados filtrando por gênero.

## **Funcionalidades**

- **Adicionar Livro**: Adiciona um livro à biblioteca, gerando um código único para cada livro.
- **Mostrar Livros por Gênero**: Exibe todos os livros de um determinado gênero.
- **Gerenciamento de Gêneros, Autores e Títulos**: Os livros são automaticamente categorizados por gênero, autor e título.

## **Instalação**

Para instalar este projeto, siga os passos abaixo:

1. Clone o repositório:
    ```bash
    git clone https://github.com/seu-usuario/biblioteca-livros.git
    ```

2. Navegue até o diretório do projeto:
    ```bash
    cd biblioteca-livros
    ```

3. Instale as dependências necessárias (se houver):
    ```bash
    bundle install
    ```

## **Uso**

Para usar a **Biblioteca**, inicialize o script principal:

```bash
ruby biblioteca.rb


 
 Especificações do Projeto: Sistema de Gerenciamento de Biblioteca em Ruby
Objetivo:
Desenvolver um sistema de gerenciamento de biblioteca utilizando Ruby, focando em práticas que envolvem manipulação de strings, arrays e iteração sobre dados.

Funcionalidades:
Cadastro de Livros:

O sistema permitirá cadastrar novos livros com as seguintes informações:
Título
Autor
Gênero
Manipulação de Livros:

Os livros cadastrados serão armazenados em um conjunto de dados na memória (pode ser um array ou outra estrutura de dados apropriada).
Será possível adicionar novos livros ao sistema.
Os livros poderão ser removidos do sistema.
Consulta de Livros:

O sistema permitirá realizar consultas de livros com base nas seguintes opções:
Busca por título: Exibir todos os livros cujo título contenha uma palavra-chave fornecida pelo usuário.
Busca por autor: Exibir todos os livros de um autor específico.
Busca por gênero: Exibir todos os livros de um determinado gênero literário.
Menu Interativo:

Implementar um menu interativo que ofereça as seguintes opções ao usuário:
Adicionar um novo livro.
Listar todos os livros cadastrados.
Realizar busca por título, autor ou gênero.
Remover um livro da biblioteca.
Encerrar o programa.
Formato de Saída:

Ao listar ou exibir informações dos livros, utilizar interpolação de strings para formatar os dados de maneira legível para o usuário.
Exemplos: "Título: O Senhor dos Anéis, Autor: J.R.R. Tolkien, Gênero: Fantasia".
Validações:

Implementar validações simples, como verificar se um livro está presente antes de tentar removê-lo.
Considerações Técnicas:
Utilize classes para representar os livros e a biblioteca.
Manipule arrays para armazenar e iterar sobre os livros.
Implemente métodos para adicionar, remover e consultar livros.
Utilize métodos de array como push, pop, select para manipulação e filtragem dos dados.
Utilize iteração com each para percorrer e exibir os livros.
Exemplo de Fluxo de Execução:
O usuário inicia o programa.
O menu é exibido oferecendo várias opções.
O usuário seleciona uma opção, como adicionar um novo livro.
Ele fornece os dados do livro (título, autor, gênero).
O livro é adicionado ao sistema.
O usuário pode listar todos os livros cadastrados ou realizar outras operações de consulta.
O programa continua executando até que o usuário opte por encerrar.
