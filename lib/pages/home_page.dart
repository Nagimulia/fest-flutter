import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/components/custom_drawer.dart';
import 'package:task/components/product_tile.dart';
import 'package:task/components/sliver_bar.dart';
import 'package:task/components/custom_tabBar.dart';
import 'package:task/models/product.dart';
import 'package:task/models/shop.dart';

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
    _tabController =
        TabController(length: ProductCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Product> _filterShopByCategory(
      ProductCategory category, List<Product> fullShop) {
    return fullShop.where((product) => product.category == category).toList();
  }

  List<Widget> getProductInThisCategory(List<Product> fullShop) {
    return ProductCategory.values.map((category) {
      List<Product> categoryShop = _filterShopByCategory(category, fullShop);
      return ListView.builder(
          itemCount: categoryShop.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final product = categoryShop[index];
            return ProductTile(
              product: product,
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverBar(
                  title: CustomTabBar(
                    tabController: _tabController,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      )
                    ],
                  ),
                ),
              ],
          body: Consumer<Shop>(
            builder: (context, shop, child) => TabBarView(
              controller: _tabController,
              children: getProductInThisCategory(shop.list),
            ),
          )),
    );
  }
}
