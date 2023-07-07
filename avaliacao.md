# FINEOUT APP

Aplicativo de apadrinhamento criado para matéria de Desenvolvimento Móvel na Instituição SENAI.

## Avaliação

### Geral

O layout do aplicativo ficou bem clean e agradável. Há uma organização do código, que permite o re-uso e facilita a manutenção. 

Apesar do tema está relacionado ao apadrinhamento, o app está mais voltado para a realização de doação às instituições, semelhante ao [crowdfunding](https://sebrae.com.br/sites/PortalSebrae/artigos/entenda-o-que-e-crowdfunding,8a733374edc2f410VgnVCM1000004c00210aRCRD).

Com a realização dos ajustes proposto abaixo, esse projeto tem muito potêncial para ser um aplicativo semelhante ao site **[Para Quem Doar](https://www.paraquemdoar.com.br/ "Para Quem Doar").**

E futuramente se tornar um aplicativo de apadrinhamento, por exemplo, semelhante ao [Livre Livros](https://www.livreslivros.com/).

Algumas observações:

- o model de `User` usado está mais próximo de ser um datasource, mostrado em aula, do que um model propriamente dito.
- poderia ter sido utilizado a Inversão de depências, ensinado em aula, para os casos onde utilizam as instâncias diretamente, por exemplo, `UserController().autenticarUsuario`(...) e `User().consultarOrganizacoes().`

### Comentário

Abaixo estão listados os "problemas", pontos de melhoria ou bug, encontrados nas páginas. As páginas que não foram listadas é porque não foram acessíveis na executação do app e, por isso, a sua avaliação não foi possível.

#### Tela Login

Ao clicar em avançar o retorno da chamada demora, seria interessante desabilitar o botão para evitar que o usuário clique mais de uma vez, antes da requisição retornar. Por exemplo, coloque um usuário inválido, cliquei várias vezes, isso fez aparecer o Alert várias vezes.

#### Tela Cadastro

A frase `já tenho uma conta!` ficou "estreitada" por causa da largura da tela do celular.

No cadastro, o label do botão `Avançar` poderia ser o `Salvar`, uma vez que, não há outras etapas no cadastro. Ao clicar neste botão, com os dados preenchidos corretamente, não há um feedback informando se foi salvo com sucesso ou não.

Apesar do `já tenho uma conta!` retornar para a tela de Login, seria interessante que fosse adicionado o botão de voltar.

#### Tela Doador

Aparece o texto fixo `Olá, XXXXXXXXXX`, seria interessante usar o nome do doador.

O botão com o simbolo `$` não realiza nenhuma ação e não há nenhuma descrição do que isso significa para orientar o usuário.

#### Tela Perfil

Aparece o texto fixo `R$ xxxx, xx` 

Os dados do usuário não são preenchidos automaticamente no formulário.

#### Tela Alterar e-mail e nome

Não salva a informação

#### Tela Favoritos

Mostra uma lista fixa de instituições
