import 'package:fineout_app/model/User.dart';
import 'package:fineout_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

class TelaDoador extends StatefulWidget {
  @override
  _TelaDoadorState createState() => _TelaDoadorState();
}

class _TelaDoadorState extends State<TelaDoador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Olá, XXXXXXXXXX',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.grey),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Ver perfil'),
              onTap: () {
                // Ação ao selecionar a opção 1
                Navigator.of(context).pushNamed(RoutesGenerator.telaPerfil);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Sair'),
              onTap: () {
                // Ação ao selecionar a opção 2
                Navigator.of(context).pushNamed(RoutesGenerator.loginPage);
              },
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: User().consultarOrganizacoes(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final organizacoesList = snapshot.data as List<dynamic>;

            return Column(
              children: [
                SizedBox(height: 25),
                Expanded(
                  child: ListView.builder(
                    itemCount: organizacoesList.length,
                    itemBuilder: (context, index) => Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: Container(
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                        ),
                        child: ListTile(
                          title: Text(organizacoesList[index][1]),
                          subtitle: Text(organizacoesList[index][2]),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.monetization_on_outlined),
                                onPressed: () {
                                  // Ação ao clicar no primeiro ícone (editar)
                                },
                              ),
                              // FavoriteIconButton(
                              //   isFavorite: items[index].isFavorite,
                              //   onPressed: () {
                              //     setState(() {
                              //       items[index].isFavorite =
                              //           !items[index].isFavorite;
                              //     });
                              //   },
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class Item {
  final String name;
  final String descricao;
  bool isFavorite;

  Item({
    required this.name,
    required this.descricao,
    required this.isFavorite,
  });
}
