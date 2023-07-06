import 'package:flutter/material.dart';
import 'package:fineout_app/components/validacaoLogin.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  final _formKey = GlobalKey<FormState>();
  String? _password;

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
                      'assets/images/logofineout.png',
                      width: 200,
                      height: 300,
                    ),
                    SizedBox(height: 20.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Nome completo',
                      ),
                    ),
                    SizedBox(height: 25.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                      validator: Validator.validateEmail,
                    ),
                    SizedBox(height: 25.0),
                    TextFormField(
                      maxLength: 8,
                      decoration: InputDecoration(
                        hintText: 'Senha',
                      ),
                      validator: Validator.validatePassword,
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      maxLength: 8,
                      decoration: InputDecoration(
                        hintText: 'Repita sua senha',
                      ),
                      validator: (value) {
                        if (value != _password) {
                          return 'As senhas não coincidem';
                        }
                        return null;
                      },
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Lógica para cadastrar o usuário
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
                  ],
                ),
                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    // Lógica para criar uma nova conta
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 150),
                    color: Colors.transparent,
                    child: Text(
                      'Já tenho uma conta!',
                      style: TextStyle(
                        color: Color.fromRGBO(132, 129, 129, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
