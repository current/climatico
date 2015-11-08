# language: pt

@javascript
Funcionalidade: Previsão do clima

  Para ter uma idéia geral do que carregar
  Como um usuário com um browser moderno
  Eu quero ver a previsão do clima

  Cenário: Dia agradável
    Dado que está 25 graus centigrados
    E que está com 0% de probabilidade de chuva
    E que está com 0 km de vento
    Quando eu acesso o aplicativo
    Então a recomendação é de roupas normais

  Cenário: Dia chuvoso
    Dado que está 25 graus centigrados
    E que está com 100% de probabilidade de chuva
    E que está com 0 km de vento
    Quando eu acesso o aplicativo
    Então a recomendação é de levar guarda-chuva
