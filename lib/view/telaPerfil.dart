import 'package:fineout_app/routes.dart';
import 'package:flutter/material.dart';

class TelaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 120),
            Text(
              'Você doou',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Text(
              'R\$ xxxx, xx',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Nome completo',
                     suffixIcon: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                              RoutesGenerator.alterarNome);
                        },
                      )
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                              RoutesGenerator.alterarEmail);
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  FractionallySizedBox(
                    widthFactor: 1.0,
                    child: Container(
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          // Lógica para salvar os dados
                          Navigator.of(context)
                              .pushNamed(RoutesGenerator.favoriteOrgs);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Ver favoritos',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Icon(Icons.save),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                          primary: Color.fromRGBO(166, 2, 108, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
