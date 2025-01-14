import 'package:deliveryapp/components/my_drawer.dart';
import 'package:deliveryapp/components/my_silver_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),*/
      drawer: MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) =>
              [MySilverTile(child: Text('Hello'), title: Text('title'))],
          body: Container(
            color: Colors.blue,
          )),
    );
  }
}
