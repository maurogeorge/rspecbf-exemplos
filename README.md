# RSpec best friends exemplos

Exemplos do livro RSpec best friends.

## Como rodar o projeto

1. `git clone git@github.com:maurogeorge/rspecbf-exemplos.git`
2. `cd rspecbf-exemplos`
3. `bundle`
4. `rake db:setup`

## Organização

Temos diversos branches para cada um dos assuntos abordados, cada branch age como se fosse uma app especifica. Trocamos de branch simplesmente com:

```bash
$ git checkout nomedobranch
```

Listamos todos os branches com:

```bash
$ git branch
```

Ao trocarmos de branch é recomendado reiniciamos o banco de dados, dado que cada branch faz o papel de uma app única. Para isso rodamos.

```bash
$ bundle exec rake db:setup
```

para garantir que todos os nossos testes estão passando rodamos rake.

```bash
$ bundle exec rake
```
