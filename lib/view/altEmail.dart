import 'package:fineout_app/components/bottom_button.dart';
import 'package:flutter/material.dart';

class MudaEmail extends StatelessWidget {
  final TextEditingController _nomeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'MUDAR E-mail',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 24.0),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Cor de fundo da caixa de texto
                    borderRadius: BorderRadius.circular(8.0), // Borda arredondada
                  ),
                  child: TextField(
                    controller: _nomeController,
                    decoration: InputDecoration(
                      hintText: 'Digite seu novo E-mail',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 12.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomButton(texto: "Alterar", onPressed: () {}),
    );
  }
}
