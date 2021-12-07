import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  const Intro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Text(
              'Te ofrecemos gran variedad de alimentos, desde almuerzos y comidas',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.deepPurpleAccent,
                  fontSize: 15,
                  fontFamily: "AbrilFatface"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    height: 110,
                    child: Image.asset('assets/images/platillo6.jpg')),
                SizedBox(
                    height: 110,
                    child: Image.asset('assets/images/platillo7.jpg')),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 20),
              child: const Text(
                '"Como en casa" te ofrece la facilidad de observar sus platillos del día.',
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
            Container(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: const Text(
                'También contamos con un registro de nuestros usuarios, en el cual, si quieres formar parte de nuestra familia, puedes crear tu propio perfil con nosotros para un mejor servicio de nuestra parte, y poder realizar su pedido de forma virtual.',
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
            Container(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: const Text(
                'Si no desea la opción de registro, tambien contamos con la opción de invitado, en el cual solo podra hacer uso de la visualización del menú y podra realizar su pedido de forma telefónica, en cual aquí le proporcionamos nuestro número.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "CormorantGaramond"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
