import 'package:flutter/material.dart';
import 'package:todoapp/screens/categories_screen.dart';
import 'package:todoapp/screens/home_screen.dart';

class DrawerNav extends StatefulWidget {
  @override
  _DrawerNavState createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[UserAccountsDrawerHeader(
            accountName: Text("ToDodster"),
            accountEmail: Text("Category and Priority based Todo App"),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: Icon(Icons.filter_list, color: Colors.white,),
              )
            ),
            decoration: BoxDecoration(
              color: Colors.red,
                ),
              ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new HomeScreen()));
            },
          ),

            ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.view_list),
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new CategoriesScreen()));
                },
            ),
          ],
        ),
      ),
    );
  }
}
