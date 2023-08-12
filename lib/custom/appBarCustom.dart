import 'package:flutter/material.dart';
import 'package:hello_word/componentes/cores.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: corAppBar,
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}
