import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String _texto;
  final void Function() _onPressed;
  const BottomButton({required String texto, required void Function() onPressed, super.key}):
  _texto=texto,_onPressed=onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xFFd9d9d9))),
        onPressed: _onPressed,
        child: Text(
        _texto,
          style: const TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xFF000000)),
        ),
      ),
    );
  }
}
