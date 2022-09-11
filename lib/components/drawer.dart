import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/aespa.jpg'),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/bp.webp")
            ),
          accountName: Text("Jimena"), 
          accountEmail: Text("no me acuerdo de mi correo"),
          ),
         const ListTile(
            leading: Icon(Icons.home),
            title: Text("inicio"),
            subtitle: Text("este es el inicio"),
            trailing: Icon(Icons.arrow_right),
          ),
         const Divider(),
          ListTile(
            leading: Icon(Icons.admin_panel_settings),
            title: Text("Administrar"),
            subtitle: Text("este es el inicio"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "AdminPetPage");
            }
          ),
          Divider(),ListTile(
            leading: Icon(Icons.settings),
            title: Text("inicio"),
            subtitle: Text("este es el inicio"),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(),
        ],
      ),
    );
  }
}