import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reto3_equipo2_nrc2286_cero/proceso/autenticacion.dart';

class globos_mensajes extends StatefulWidget {
  const globos_mensajes({super.key});

  @override
  State<globos_mensajes> createState() => _globos_mensajesState();
}

class _globos_mensajesState extends State<globos_mensajes> {
  Stream<QuerySnapshot> resp_consulta = FirebaseFirestore.instance
      .collection("Chat")
      .orderBy("tiempo", descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: resp_consulta,
        builder: (context, AsyncSnapshot<QuerySnapshot> respuesta) {
          return ListView.builder(
            itemCount: respuesta.data!.docs.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: (autenticacion().usuarios?.email).toString() ==
                        respuesta.data!.docs[index].get("email")
                    ? Colors.green[100]
                    : Colors.green[300],
                child: ListTile(
                  title: Text(respuesta.data!.docs[index].get("mensaje"),
                      textAlign: (autenticacion().usuarios?.email).toString() ==
                              respuesta.data!.docs[index].get("email")
                          ? TextAlign.right
                          : TextAlign.left),
                  subtitle: Text(respuesta.data!.docs[index].get("email"),
                      textAlign: (autenticacion().usuarios?.email).toString() ==
                              respuesta.data!.docs[index].get("email")
                          ? TextAlign.right
                          : TextAlign.left),
                ),
              );
            },
          );
        });
  }
}
