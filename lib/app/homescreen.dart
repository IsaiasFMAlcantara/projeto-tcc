import 'package:flutter/material.dart';
import 'package:hello_word/auxiliar/listagem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _formValido = false;
  TextEditingController _pesquisaValida = TextEditingController();

  void _validarFormulario() {
    _formKey.currentState?.validate();
  }

  String? _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    } else {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _pesquisaValida.addListener(_validarFormulario);
  }

  @override
  void dispose() {
    _pesquisaValida.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _pesquisaValida,
              decoration: InputDecoration(
                labelText: "Pesquisa",
                suffixIcon: Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListProducts(), 
          ),
        ],
      ),
    );
  }
}