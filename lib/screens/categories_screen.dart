import 'package:flutter/material.dart';
import 'package:todoapp/screens/home_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

  class _CategoriesScreenState extends State<CategoriesScreen> {

    _showFormInDialog(BuildContext context) {
      return showDialog(context: context, barrierDismissible: true, builder: (param) {
        return AlertDialog(
          actions: <Widget>[
            FlatButton(
              onPressed: (){

              },
              child: Text("Cancel"),
            ),
            FlatButton(
              onPressed: (){

              },
              child: Text("Save"),
            )
          ],
          title: Text("New category"), content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: 'Category name',
                ),
              )
            ],
          ),
        ),);
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: RaisedButton(
          elevation: 0.0,
          color: Colors.red,
          child: Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (context) => new HomeScreen()));
          },
        ),
        title: Text("ToDodster.categories"),
      ),
      body: Center(child: Text("tut budet categories screen"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _showFormInDialog(context);
      }, child: Icon(Icons.add),),
    );
  }
}
