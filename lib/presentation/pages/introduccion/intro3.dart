import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  const Intro3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/Imagen1.jpg',
            height: 100,
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'ALMUERZOS',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.cyan,
                fontSize: 15,
                fontFamily: "AbrilFatface"),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: const Text(
              'Contamos con una sección nutritiva: Incluye diferente tipos de ensaladas y jugos naturales.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: const Text(
              'También contamos con café, hot cakes, waffles, huevos algusto, sandwiches, etc',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'COMIDAS',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.cyan,
                fontSize: 15,
                fontFamily: "AbrilFatface"),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: const Text(
              'Contamos con varios guisos para la hora de la comida, todos los días son platillos variados, incluye tortillas echas amano y de acompañamiento; arroz, frijoles y espaguetti (dependiendo el guiso).',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'BEBIDAS',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.cyan,
                fontSize: 15,
                fontFamily: "AbrilFatface"),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 10),
            child: const Text(
              'Todos los días contamos con diferente tipo de aguas naturales, para el almuerzo y la comida.Tambien contamos con refrescos, jugos naturales y café.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'CONTAMOS CON ENVIO A DOMICILIO',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.pink,
                fontSize: 15,
                fontFamily: "CormorantGaramond"),
          ),
        ],
      ),
    );
  }
}
