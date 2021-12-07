import 'package:appcomoencasa/my_flutter_app_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListaComidas extends StatefulWidget {
  const ListaComidas({Key? key}) : super(key: key);

  @override
  _ListaComidasState createState() => _ListaComidasState();
}

class _ListaComidasState extends State<ListaComidas> {
  final Stream<QuerySnapshot> comidas =
      FirebaseFirestore.instance.collection('comidas').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: comidas,
        builder: (
          BuildContext context,
          AsyncSnapshot<QuerySnapshot> snapshot,
        ) {
          if (snapshot.hasError) {
            return const Text('Error');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(),
                Text('Cargando'),
              ],
            ));
          }
          final data = snapshot.requireData;
          return ListView.builder(
              itemCount: data.size,
              itemBuilder: (context, index) {
                return Center(
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 18,
                        right: 90,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(MyFlutterApp.shopping_bag),
                          color: Colors.brown,
                        ),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('${data.docs[index]['comida']}',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontFamily: 'CormorantGaramond',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrangeAccent)),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
                              child: Card(
                                  color: Colors.red,
                                  child: Image.network(
                                      '${data.docs[index]['image']}')),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Text(
                                  'Descripción: ${data.docs[index]['descripcion']}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'CormorantGaramond',
                                      fontSize: 18,
                                      color: Colors.black)),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20, top: 4),
                              child: Text(
                                  'Precio: ${data.docs[index]['precio']}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'AbrilFatface',
                                      fontSize: 14,
                                      color: Colors.black)),
                            ),
                            const Divider(
                              height: 30,
                              color: Colors.brown,
                            ),
                          ]),
                    ],
                  ),
                );
              });
        });
  }
}
