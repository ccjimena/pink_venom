import 'package:demo/routes/add_pet_page.dart';
import 'package:demo/routes/admin_pet_page.dart';
import 'package:demo/routes/detail_pet_page.dart';
import 'package:demo/routes/edit_pet_page.dart';
import 'package:demo/routes/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => const Home(),
        'AdminPetPage': (_) => const AdminPetPage(),
        'detail': (_) => const DetailPetPage(),
        'edit': (_) => const EditPetPage(),
        'add': (_) => const AddPetPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
    );
  }
}
