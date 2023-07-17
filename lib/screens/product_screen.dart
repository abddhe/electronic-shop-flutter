import 'package:electronic_shop/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          leadingWidth: 100.0,
          leading: TextButton.icon(
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.labelSmall!.copyWith(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            label: const Text(
              "رجوع",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            icon: const Icon(
              CupertinoIcons.arrow_right,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 1,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 40.0,
                          ),
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Positioned(
                          width: 320,
                          height: 320,
                          child: Image.asset(product.image),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "السعر: ${product.price}\$",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 17.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                product.description,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.white,
                      wordSpacing: 1.5,
                  height: 1.5,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
