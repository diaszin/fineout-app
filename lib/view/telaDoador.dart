import 'package:fineout_app/components/butttom_favorite.dart';
import 'package:flutter/material.dart';

class TelaDoador extends StatefulWidget {
  @override
  _TelaDoadorState createState() => _TelaDoadorState();
}

class _TelaDoadorState extends State<TelaDoador> {
  List<Item> items = [
    Item(
      name: 'Cleber',
      descricao: 'Descrição do Item 1',
      isFavorite: false,
    ),
    Item(
      name: 'Bruno',
      descricao: 'Descrição do Item 2',
      isFavorite: false,
    ),
    Item(
      name: 'Davi',
      descricao: 'Descrição do Item 3',
      isFavorite: false,
    ),
    Item(
      name: 'Kaique',
      descricao: 'Descrição do Item 4',
      isFavorite: false,
    ),
  ];

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
              },
            ),
            ListTile(
               leading: Icon(Icons.logout),
              title: Text('Sair'),
              onTap: () {
                // Ação ao selecionar a opção 2
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: ListTile(
                    title: Text(items[index].name),
                    subtitle: Text(items[index].descricao),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.monetization_on_outlined),
                          onPressed: () {
                            // Ação ao clicar no primeiro ícone (editar)
                          },
                        ),
                        FavoriteIconButton(
                          isFavorite: items[index].isFavorite,
                          onPressed: () {
                            setState(() {
                              items[index].isFavorite =
                                  !items[index].isFavorite;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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
