import 'package:flutter/material.dart';
import 'package:fooddelevery/components/my_current_location.dart';
import 'package:fooddelevery/components/my_description_box.dart';
import 'package:fooddelevery/components/my_drawer.dart';
import 'package:fooddelevery/components/my_sillver_app_bar.dart';
import 'package:fooddelevery/components/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage>createState() =>_HomePageState();
}
class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body:  NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // my location
                const MyCurrentLocation(),
                // box describe
                const MyDescriptionBox(),
              ],
            ),
          ),
      ],
          body: TabBarView(
        controller:  _tabController,
        children: [
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("first Item"),
          ),

          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("first Item"),
          ),
          ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Text("first Item"),
          ),
        ],
      )
      ),
    );
  }
}
