import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.account_tree_rounded),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
