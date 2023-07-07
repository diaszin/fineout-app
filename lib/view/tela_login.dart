import 'package:fineout_app/controller/UserController.dart';
import 'package:fineout_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:fineout_app/components/validacaoLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _senha;

  String? _validateEmail(String? email) {
    return Validator.validateEmail(email);
  }

  String? _validatePassword(String? password) {
    return Validator.validatePassword(password);
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Lógica para autenticar o usuário
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logofineout.png",
                      width: 200,
                      height: 300,
                    ),
                    SizedBox(height: 20.0),
                    Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                          ),
                          validator: _validateEmail,
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          obscureText: true,
                          maxLength: 8,
                          decoration: InputDecoration(
                            hintText: 'Senha',
                          ),
                          validator: _validatePassword,
                          onChanged: (value) {
                            setState(() {
                              _senha = value;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 200.0,
                      height: 70.0,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            // Lógica para autenticar e ir
                            final foiAutenticado = await UserController()
                                .autenticarUsuario(_email!, _senha!);
                            if (foiAutenticado) {
                              Navigator.of(context)
                                  .pushNamed(RoutesGenerator.homePage);
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Mensagem !"),
                                      content: Text("Usuário inválido !"),
                                    );
                                  });
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          primary: Color.fromARGB(255, 17, 91, 92),
                        ),
                        child: Text('Avançar'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextButton(
                        child: const Text("Quero me cadastrar"),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RoutesGenerator.signupPage);
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
