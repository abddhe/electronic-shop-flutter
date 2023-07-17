import 'package:electronic_shop/models/product.dart';
import 'package:electronic_shop/test_data.dart';
import 'package:electronic_shop/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("أهلاً بكم في متجرنا"),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                CupertinoIcons.bars,
                size: 30.0,
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(top: 70.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
              ),
            ),
            ListView(
              children: [
                ...allProducts.map((e) => ProductCard(product: e),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
