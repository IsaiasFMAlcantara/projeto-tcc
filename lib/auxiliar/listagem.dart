import 'package:flutter/material.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({Key? key}) : super(key: key);

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
  List<Map<String, dynamic>> listaJson = [
    {"categoria": "Caneca", "expandido": true},
    {"categoria": "Camisa", "expandido": true},
    {"categoria": "Almofada", "expandido": true},
    {"categoria": "Copo Térmico", "expandido": true}
  ];

  List<Map<String, dynamic>> listajsonprodutos = [
    {"produto": "caneca 01", "vcategoria": "Caneca"},
    {"produto": "caneca 02", "vcategoria": "Caneca"},
    {"produto": "camisa 01", "vcategoria": "Camisa"},
    {"produto": "camisa 02", "vcategoria": "Camisa"},
    {"produto": "almofada 01", "vcategoria": "Almofada"},
    {"produto": "Copo Térmico 01", "vcategoria": "Copo Térmico"},
    {"produto": "Copo Térmico 02", "vcategoria": "Copo Térmico"},
    {"produto": "Caneca de plástico", "vcategoria": "Caneca"},
    {"produto": "Caneca de vidro", "vcategoria": "Caneca"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaJson.length,
      itemBuilder: (context, index) {
        final item = listaJson[index];
        final isExpanded = item['expandido'];
        final produtosDaCategoria = listajsonprodutos
            .where((produto) => produto['vcategoria'] == item['categoria'])
            .toList();

        return Card(
          child: Column(
            children: [
              ListTile(
                title: Text(item['categoria']),
                onTap: () {
                  setState(() {
                    item['expandido'] = !isExpanded;
                  });
                },
              ),
              if (isExpanded)
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: produtosDaCategoria.length,
                    itemBuilder: (context, subIndex) {
                      final produto = produtosDaCategoria[subIndex];
                      return Container(
                        width: 100,
                        child: Card(
                          child: ListTile(
                            title: Text(produto['produto']),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
