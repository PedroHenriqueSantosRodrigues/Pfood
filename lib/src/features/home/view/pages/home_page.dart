import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

import '../../widgets/all_stores/all_stores_widgets.dart';
import '../../widgets/drink_store/drink_store_widgets.dart';
import '../../widgets/drugs_store/drugs_store_widgets.dart';
import '../../widgets/markets/markets_widgets.dart';
import '../../widgets/pet_store/pet_store_widgets.dart';
import '../../widgets/restaurants/restaurants_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
 with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin{
  late final tabController = TabController(length: 6, vsync: this);
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 6,
       child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom:  TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                text: 'Início',
              ),
              Tab(
                text: 'Restaurantes',
              ),
              Tab(
                text: 'Mercados',
              ),
              Tab(
                text: 'Bebidas',
              ),
              Tab(
                text: 'Farmácia',
              ),
              Tab(
                text: 'Pets',
              )
            ], isScrollable: true,
            indicatorColor: Colors.red,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black54,
            ),
            ),
            body: TabBarView(
              controller: tabController,
              children: [
                AllStoresWidgets(),
                RestaurantsWidgets(),
                MarketsWidgets(),
                DrinkStoresWidgets(),
                DrugStoreWidgets(),
                PetStoresWidgets(),
                
                
              ]
              ),
       )
       );
  }
  
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  
}
