import 'package:flutter/material.dart';

class AdminPetPage extends StatefulWidget {
  const AdminPetPage({super.key});

  @override
  State<AdminPetPage> createState() => _AdminPetPageState();
}

class _AdminPetPageState extends State<AdminPetPage> {
  @override
  Widget build(BuildContext context) {
    return _tabs();
  }

  Widget _tabs () {
    return DefaultTabController(
      length: 2,
     child: Scaffold(
      appBar: AppBar(
        title: Text('Hola'),
        bottom: TabBar(tabs: [
          Text('Favoritos'),
          Text('Todos'),
        ]),
      ) ,
      body: const TabBarView(
        children: [
          Text('Haz seleccionado favoritos'),
          Text('Haz Seleccionado Todos')
        ] 
        ),
        floatingActionButton: FloatingActionButton(onPressed:
         () { Navigator.pushNamed(context, 'add'); },
         child: Icon(Icons.add),),
     ),
     );

  }
}
