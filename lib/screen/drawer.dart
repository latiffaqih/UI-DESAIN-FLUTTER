import 'package:flutter/material.dart';


class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(accountName: Text("Latif Picture"),
            accountEmail: Text("latifpicutre18@fmail.com"),
            ), 
            ),
        ],
      ),
    );
  }
}