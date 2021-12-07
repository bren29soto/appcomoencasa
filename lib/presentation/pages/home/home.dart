import 'package:appcomoencasa/presentation/bloc/cubit/auth_cubit.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/almuerzos/lista_almuerzo.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/almuerzos/call_almuerzos.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/bebidas/call_bebidas.dart';
import 'package:appcomoencasa/presentation/pages/pag_menus/comidas/call_comidas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static Widget create(BuildContext context) => Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () => context.read<AuthCubit>().signOut(),
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text('Menú "Como en casa"',
              style: TextStyle(fontSize: 21, color: Colors.brown)),
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
        child: Column(
      children: [
        Text(
          '"MENU DEL DÍA"',
          style: TextStyle(
              color: Colors.deepOrange.shade300,
              fontSize: 30,
              fontFamily: "AbrilFatface"),
        ),
        const Divider(
          color: Colors.brown,
          height: 10,
        ),
        const SizedBox(
          height: 20,
        ),
        const CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/ordenar.jpg'),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 20),
          child: const Text(
            '¡Elije lo que comeras hoy!',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "CormorantGaramond"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 20),
          child: const Text(
            '*Selecciona un botón*',
            textAlign: TextAlign.justify,
            style: TextStyle(
                color: Colors.brown,
                fontSize: 18,
                fontFamily: "CormorantGaramond"),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: Colors.brown,
          height: 20,
        ),
        TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CallAlmuerzo())),
          child: const Text(
            '>>MENÚ ALMUERZO<<',
            style: TextStyle(
                backgroundColor: Colors.deepPurple,
                color: Colors.black,
                fontSize: 18,
                fontFamily: "CormorantGaramond"),
          ),
        ),
        const Divider(
          color: Colors.brown,
          height: 20,
        ),
        TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CallComidas())),
          child: const Text(
            '>>MENÚ COMIDAS<<',
            style: TextStyle(
                backgroundColor: Colors.cyan,
                color: Colors.black,
                fontSize: 18,
                fontFamily: "CormorantGaramond"),
          ),
        ),
        const Divider(
          color: Colors.brown,
          height: 20,
        ),
        TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => CallBebidas())),
          child: const Text(
            '>>MENÚ BEBIDAS<<',
            style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.black,
                fontSize: 18,
                fontFamily: "CormorantGaramond"),
          ),
        ),
        const Divider(
          color: Colors.brown,
          height: 20,
        ),
        const CircleAvatar(
          radius: 60.0,
          backgroundColor: Colors.grey,
          backgroundImage: AssetImage('assets/images/ordenar2.jpg'),
        ),
      ],
    ));
  }
}
