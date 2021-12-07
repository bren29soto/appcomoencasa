import 'package:appcomoencasa/presentation/pages/pag_menus/bebidas/lista_bebidas.dart';
import 'package:flutter/material.dart';

class CallBebidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text('Bebidas',
              style: TextStyle(
                  fontFamily: 'Courgette', fontSize: 23, color: Colors.brown)),
        ),
        body: _MyUserSection());
  }
}

class _MyUserSection extends StatefulWidget {
  @override
  _MyUserSectionState createState() => _MyUserSectionState();
}

class _MyUserSectionState extends State<_MyUserSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListaBebidas(),
    );
  }
}
