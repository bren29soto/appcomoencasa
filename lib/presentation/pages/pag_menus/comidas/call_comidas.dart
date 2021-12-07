import 'package:appcomoencasa/presentation/bloc/cubit/auth_cubit.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/almuerzos/lista_almuerzo.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/comidas/lista_comidas.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CallComidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text('Comidas',
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
      child: ListaComidas(),
    );
  }
}
