import 'package:demo/components/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blackpink'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: _itemCard,
      ),
      drawer: MainDrawer(),
    );
  }
}

Widget _itemCard(BuildContext context, int index) {
  return Card(
    child: Column(
      children: [
        Image.asset('assets/images/bp.webp'),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'AdminPetPage');
          },
          child: const Text('The Album'),
        )
      ],
    ),
  );
}
