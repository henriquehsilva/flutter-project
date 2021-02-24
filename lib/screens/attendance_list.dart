import 'package:flutter/material.dart';

class AttendaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atendimentos'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Câmara Municipal de Anápolis'),
              subtitle: Text(
                  'Avenida Jamel Cecílio, R. L 14, Qd. 50 - Jundiaí, Anápolis - GO, 75110-330'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.email),
              title: Text('E-Mail do Vereador Suender'),
              subtitle: Text('suender.federal@gmail.com'),
            ),
          )
        ],
      ),
    );
  }
}
