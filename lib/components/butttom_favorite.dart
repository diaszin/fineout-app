import 'package:flutter/material.dart';


class FavoriteIconButton extends StatefulWidget {
  final bool isFavorite;
  final VoidCallback onPressed;

  const FavoriteIconButton({
    required this.isFavorite,
    required this.onPressed,
  });

  @override
  _FavoriteIconButtonState createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool isFavorite = false;

  
  @override
  void initState() {
    super.initState();
    isFavorite = widget.isFavorite;
  }
  
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
        widget.onPressed();
      },
    );
  }
}