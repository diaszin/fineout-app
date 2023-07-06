import 'package:fineout_app/components/bottom_button.dart';
import 'package:flutter/material.dart';

class TelaOrganizacoesFavoritadas extends StatelessWidget {
  const TelaOrganizacoesFavoritadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 30,
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(children: [
              Column(
                children: const [
                  Text(
                    "Organização lá",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: Color(0xff000000)),
                  ),
                  Text(
                    "emaildaorganização.lá",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w800,
                        fontSize: 12,
                        color: Color(0xff736f6f)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "R\$ xxxxx.xx",
                        style: TextStyle(
                            color: Color(0xFF83A2F3),
                            fontSize: 40,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "O total que foi doado por você",
                      style: TextStyle(
                          color: Color(0xffaba6a6),
                          fontSize: 17,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
        bottomSheet: BottomButton(texto: "Doar +", onPressed: () {}));
  }
}
