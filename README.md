# Template DevkitPro Game Boy Advance (GBA) Docker

Esse template fornece uma estrutura simples para quem deseja começar um projeto para Game Boy Advance usando o DevkitPro Arm juntamente com o Docker.

## Rodando pela primeira vez

Se for a primeira vez que você vai programar para GBA, é bem provável que você não possua uma Imagem Docker do DevkitPro Arm e muito menos uma imagem customizada com um espaço de trabalho.

Então, rode o script `build_docker_image.sh`, você pode rodar com o seguinte comando:

```shell
sh ./scripts/build_docker_image.sh
```

Só é preciso rodar esse script uma única vez, assim, criamos uma Imagem Docker chamada `gba-dev`.

Mesmo se você baixar esse projeto novamente, não precisa rodar esse script, uma vez que, você já tenha a imagem criada.

## Desenvolvimento

Na raiz do projeto, execute o script `dev.sh`, ele irá criar um contêiner com acesso ao bash para que você possa compilar seu código sempre que preciso.

```shell
sh ./scripts/dev.sh
```

Com o bash do contêiner em execução, sempre que quiser gerar a room, use:

```shell
make
```

Feito isso, a room do seu jogo será gerada. Para sair do bash do contêiner, use:

```shell
exit
```

Ao fazer isso, o contêiner será encerrado e excluído, evitando o acúmulo de múltiplos contêineres.

## Compilação

Para compilar, você pode executar o script `build.sh`, lembrando que você deve chamar esse script na raiz do projeto, assim como o script `dev.sh`, e não a partir do diretório da pasta de scripts, para que o docker consiga localizar o arquivo `Makefile`.

```shell
sh ./scripts/build.sh
```

Se tudo tiver corrido bem, você verá um arquivo `workspacegba.gba` e também um arquivo `workspacegba.elf`, além de um novo diretório chamado `build`.

## IntelliSense Visual Studio Code

Eu tenho que admitir que não estou muito feliz com o resultado, mas funciona. Caso queira muito ter um IntelliSense no Visual Studio Code, execute o seguinte comando:

```shell
sh ./scripts/copy_libs.sh
```

Feito isso, basta reiniciar o editor e tudo deverá funcionar bem.

Só consegui pensar em duas opções, utilizar a extensão Dev Container e desenvolver dentro do contêiner, ou copiar as libs para o projeto para que o IntelliSense funcionasse. Optei pela segunda.

A meu ver, desenvolver dentro do contêiner quebra a beleza do projeto como ele está agora, que é usar o contêiner apenas para compilar. Desenvolver dentro dele não é algo que eu gostaria, mas também não estou feliz em ter que copiar as libs para o projeto, pois também quebra a magia da coisa. Sou extremamente leigo no uso de Docker, se você souber uma maneira de superar esse dilema, por favor, me ajude.

## Agradecimentos

Por fim, deixo meus agradecimentos à equipe do [DevkitPro](https://devkitpro.org/) por fornecer a cadeia de ferramentas para criação de jogos para Game Boy Advance, além de outros consoles, e pelo [Makefile](https://github.com/devkitPro/gba-examples) que usei nesse template.
