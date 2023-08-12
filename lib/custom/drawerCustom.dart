import 'package:flutter/material.dart';
import 'package:hello_word/componentes/cores.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: corIconeDrawer,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: corTextoDrawer),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.category_sharp,
                color: corIconeDrawer,
              ),
              title: Text(
                'Categorias',
                style: TextStyle(color: corTextoDrawer),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.abc,
                color: corIconeDrawer,
              ),
              title: Text(
                'Sobre',
                style: TextStyle(color: corTextoDrawer),
              ),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
          ),
        ],
      ),
    );
  }
}
