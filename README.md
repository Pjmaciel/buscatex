[![Ruby on Rails](https://img.shields.io/badge/Ruby_on_Rails-7.1.3.4-red.svg)](https://rubyonrails.org/)
[![HTTParty](https://img.shields.io/badge/HTTParty-0.18.1-blue.svg)](https://github.com/jnunemaker/httparty)
[![json-server](https://img.shields.io/badge/json--server-0.17.1-yellow.svg)](https://github.com/typicode/json-server)
[MIT](LICENSE)

# Buscatex

Buscatex é uma aplicação Ruby on Rails que consome múltiplas APIs de parceiros para exibir produtos e informações das lojas. Este projeto foi desenvolvido como parte de um desafio no curso de Backend Ruby da FAP/Softex.

## Requisitos

- Ruby 3.3.0
- Rails 7.1.3.4
- Node.js e npm (para json-server)

## Configuração

### 1. Clone o repositório

```sh
git clone https://github.com/seu-usuario/buscatex.git
cd buscatex
```

### 2. Instale as dependências

```sh
bundle install
npm install -g json-server
```

## Uso

### Páginas Disponíveis

- **Produtos:** `/products`
- **Parceiros:** `/partners`

### APIs Disponíveis

#### Obter todos os produtos

```
GET /products
```

#### Obter informações da loja

```
GET /info
```

### Estrutura de Resposta

#### Produtos

```json
[
  {
    "name": "Product 1",
    "price": 10.0,
    "photo": "https://example.com/product1.jpg",
    "is_promotion": true,
    "category": {
      "type": "TI",
      "subcategory": "Windows"
    }
  }
]
```

#### Informações da Loja

```json
{
  "name": "Shop 1",
  "color": "#FF5733",
  "owner": "Owner 1",
  "department": "Department 1"
}
```

### Estrutura de Resposta da API (Swagger)

Para documentar a API com Swagger, você pode criar um arquivo `swagger.yml` na raiz do seu projeto:

```yaml
swagger: "2.0"
info:
  description: "API para obter informações sobre produtos e detalhes da loja."
  version: "1.0.0"
  title: "Buscatex API"
host: "localhost:8080"
schemes:
  - "http"
paths:
  /products:
    get:
      summary: "Obter todos os produtos"
      responses:
        200:
          description: "Lista de produtos"
          schema:
            type: "array"
            items:
              type: "object"
              properties:
                name:
                  type: "string"
                price:
                  type: "number"
                photo:
                  type: "string"
                is_promotion:
                  type: "boolean"
                category:
                  type: "object"
                  properties:
                    type:
                      type: "string"
                    subcategory:
                      type: "string"
  /info:
    get:
      summary: "Obter informações da loja"
      responses:
        200:
          description: "Informações da loja"
          schema:
            type: "object"
            properties:
              name:
                type: "string"
              color:
                type: "string"
              owner:
                type: "string"
              department:
                type: "string"
```
