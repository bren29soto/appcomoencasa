import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'BIENVENIDOS',
            style: TextStyle(
                color: Colors.deepOrange.shade300,
                fontSize: 40,
                fontFamily: "AbrilFatface"),
          ),
          Image.asset(
            'assets/images/entrada.jpg',
            height: 300,
            width: 280,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 20),
            child: const Text(
              'Este es un nuevo espacio que te ofrece "como en casa" para un mejor servicio y mayor comodidad, en el cual esperamos sea de gran utilidad para usted.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 15, right: 20),
            child: const Text(
              'La app tiene como finalidad un servicio mas fácil para realizar sus pedidos que desee con un simple clic, desde su móvil.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontFamily: "CormorantGaramond"),
            ),
          ),
        ],
      ),
    );
  }
}
