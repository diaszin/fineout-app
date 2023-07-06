import 'package:flutter/material.dart';
import 'package:fineout_app/components/bottom_button.dart';
import 'package:fineout_app/components/butttom_favorite.dart';

class SobreNos extends StatelessWidget {
  const SobreNos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 150,
        centerTitle: true,
        title: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Organização XYZABCD',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
        flexibleSpace: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context); // Navegar de volta
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FavoriteIconButton(
                    isFavorite: true, // Coloque o valor desejado para isFavorite
                    onPressed: () {
                      // Lógica para lidar com a ação do botão de favorito
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Text(
                'Descrição da Organização',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text.rich(
                TextSpan(
                  text:
                      'Bem-vindo à nossa organização de caridade! Somos um grupo de corações dedicados que acredita no poder transformador da bondade e da compaixão. Nosso objetivo é fazer a diferença, trazendo esperança e transformando vidas, uma pessoa de cada vez. Nossa história começa com a paixão por ajudar os outros e a determinação de criar um impacto positivo no mundo. Com uma equipe diversificada de voluntários comprometidos, unimos forças para enfrentar os desafios sociais e oferecer soluções tangíveis para as comunidades que mais precisam.',
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomButton(
        texto: 'Ver histórico de doações',
        onPressed: () {},
      ),
    );
  }
}
