import 'package:flutter/material.dart';
import 'custom/appBarCustom.dart';
import 'custom/drawerCustom.dart';
import 'app/homescreen.dart';
import 'app/sales.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _paginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'DAMM CRIAÇÕES'),
      drawer: CustomDrawer(),
      body: IndexedStack(
        index: _paginaSelecionada,
        children: [
          HomeScreen(),
          PaginaSales(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _paginaSelecionada,
        onTap: (int? novoValor) {
          setState(() {
            _paginaSelecionada = novoValor!;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank_sharp,
            ),
            label: 'Culinarias',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
