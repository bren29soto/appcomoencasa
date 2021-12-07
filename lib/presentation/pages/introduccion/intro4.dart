import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';

class Intro4 extends StatelessWidget {
  const Intro4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            '--IMAGENES DE NUESTRAS INSTALACIONES--',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.red,
                fontSize: 18,
                fontFamily: "AbrilFatface"),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/local.jpg',
            height: 180,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/local1.jpg',
            height: 180,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: const Text(
              'VISITANOS EN ALDAMA #30, COL.CENTRO, IGUALA DE LA INDEPENDENCIA, HORARIO DE 7:30 a.m - 6:00 p.m',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          const Text(
            '¡TE ESPERAMOS!',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontSize: 15,
                fontFamily: "AbrilFatface"),
          ),
        ],
      ),
    );
  }
}
