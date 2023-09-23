import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsividadeMediaQueryState createState() => _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    // Obtém a largura da tela a partir do MediaQuery
    var largura = MediaQuery.of(context).size.width;

    // Obtém a altura da tela a partir do MediaQuery
    var altura = MediaQuery.of(context).size.height;

    // Obtém a altura da barra de status a partir do MediaQuery
    var alturaBarraStatus = MediaQuery.of(context).padding.top;

    // Obtém a altura da AppBar padrão do Material Design
    var alturaAppBar = AppBar().preferredSize.height;

    // Calcula a largura de um item com base em 1/3 da largura da tela
    var larguraItem = largura / 3; // 33.33% da largura da tela

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsividade'),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
            child: const Center(
              child: Text(
                'Responsividade',
                style: TextStyle(color: Colors.white), // Define a cor do texto
              ),
            ),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
            child: const Center(
              child: Text(
                'Responsividade',
                style: TextStyle(color: Colors.white), // Define a cor do texto
              ),
            ),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                'Responsividade',
                style: TextStyle(color: Colors.blue), // Define a cor do texto
              ),
            ),
          )
        ],
      ),
    );
  }
}
