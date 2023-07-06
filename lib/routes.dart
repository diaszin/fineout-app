import 'package:fineout_app/view/altEmail.dart';
import 'package:fineout_app/view/altNome.dart';
import 'package:fineout_app/view/organizacao_favoritadas.dart';
import 'package:fineout_app/view/telaCadastro.dart';
import 'package:fineout_app/view/tela_login.dart';
import 'package:fineout_app/view/visualizarDoacao.dart';
import 'package:flutter/material.dart';

class RoutesGenerator {
  static const loginPage = '/';
  static const signupPage = '/clique/add';
  static const aboutOrgPage = '/aboutOrg';
  static const homePage = '/homePage';
  static const favoriteOrgs = '/favoriteOrg';
  static const alterarNome = '/alterarNome';
  static const alterarEmail = '/alterarEmail';
  static const visualizarDoacao = '/visualizarDoacao';
  static const cadastroPage = '/cadastroPage';

  RoutesGenerator._();

  static Route generate(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return _goPage(LoginPage());
      case cadastroPage:
        return _goPage(TelaCadastro());
      case alterarNome:
        return _goPage(MudaNome());
      case alterarEmail:
        return _goPage(MudaEmail());
      case favoriteOrgs:
        return _goPage(const TelaOrganizacaoFavoritadas());
      case visualizarDoacao:
        return _goPage(VisualizarDoacao());
      default:
        return _goPage(LoginPage());
    }
  }

  static _goPage(Widget page) => MaterialPageRoute(
        builder: (_) => page,
      );
}
