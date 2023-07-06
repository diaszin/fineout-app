import 'package:flutter/material.dart';
import 'package:fineout_app/components/bottom_button.dart';

class Doacao extends StatelessWidget {
  final TextEditingController _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).padding.top + kToolbarHeight,
            color: Colors.grey[300],
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  'Voltar',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                width: 360,
                height: 800,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Faça a diferença com uma doação generosa e transforme vidas.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 219, 218, 218)),
                          child: Center(
                            child: TextField(
                              controller: _valorController,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Insira seu valor',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                _valorController.text = '10,00';
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 116, 119, 122)),
                              ),
                              child: Text('R\$ 10,00'),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                _valorController.text = '20,00';
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 116, 119, 122)),
                              ),
                              child: Text('R\$ 20,00'),
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                _valorController.text = '50,00';
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color.fromARGB(255, 116, 119, 122)),
                              ),
                              child: Text('R\$ 50,00'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(texto: "Alterar", onPressed: () {}),
        ],
      ),
    );
  }
}
