import 'package:flutter/material.dart';

class Lists2Page extends StatelessWidget {
  const Lists2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(title: Text("Listas")),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return myCard(index);
          },
        ));
  }

  Widget myCard(int index) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        // ignore: prefer_const_constructors
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: Column(
          children: [
            ListTile(
              // ignore: prefer_const_constructors
              contentPadding: EdgeInsets.fromLTRB(15, 10, 20, 0),
              title: Text("Titulo $index"),
              // ignore: prefer_const_constructors
              subtitle: Text("Este es el subtitulo"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.plus_one),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                  onPressed: () => {print("Aceptar $index")},
                  child: Text("Aceptar")),
              TextButton(
                  onPressed: () => {print("Cancelar $index")},
                  child: Text("Cancelar")),
            ]),
          ],
        ));
  }
}
