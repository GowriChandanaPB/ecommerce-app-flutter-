import 'package:exommerce_app/components/my_drawer.dart';
import 'package:exommerce_app/components/my_product_tile.dart';
import 'package:exommerce_app/models/product.dart';
import 'package:exommerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),

        actions: [
          IconButton( onPressed: () => Navigator.pushNamed(context, '/cart_page'),
          icon: const Icon(Icons.shopping_cart_outlined)
           )
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,

      drawer: MyDrawer(),
      body: ListView(
        children: [
          const SizedBox(height: 25,),
          //shop subtitle
          Center(
            child: Text(
              "Pick from selected list of premium products",
              //style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
            )
          ),

          //product list
          SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: Products.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(15),
          itemBuilder: (context, index) {
            final product = Products[index];
            return MyProductTile(product: product);
          },
        ),
      ),

        ],
      )
    );
  }
}

//2.56.46
