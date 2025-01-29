import 'package:deliveryapp/components/my_current_location.dart';
import 'package:deliveryapp/components/my_descripton_box.dart';
import 'package:deliveryapp/components/my_drawer.dart';
import 'package:deliveryapp/components/my_silver_tile.dart';
import 'package:deliveryapp/components/my_tab_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverTile(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  // my current location
                  MyCurrentLocation(),

                  // description box
                  MyDescriptonBox(),
                ],
              ))
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('First tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Second tab items'),
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) => const Text('Third tab items'),
            ),
          ],
        ),
      ),
    );
  }
}
