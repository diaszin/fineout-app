import 'package:flutter/material.dart';

class TelaOrganizacaoFavoritadas extends StatelessWidget {
  const TelaOrganizacaoFavoritadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0XFFA6026C), width: 2),
            ),
            child: ListTile(
              title: const Text("Organização XYZ"),
              subtitle: const Text("hhdiuadhaidhiahd"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Color(0XFFFFFFFF)),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0XFFA6026C))),
                      child: const Text("Remover"),
                      onPressed: () {
                        // lógica de remover dos favoritos
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
