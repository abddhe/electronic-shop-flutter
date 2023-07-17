import 'package:electronic_shop/constants.dart';
import 'package:electronic_shop/screens/product_screen.dart';
import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProductScreen(
            product: product,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        child: SizedBox(
          height: 190,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 25,
                      color: Colors.black12,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  height: 160,
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18.0,
                        ),
                      ),
                      Container(
                        width: 100,
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          product.description,
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 25.0, 0.0, 0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: kBackgroundColor,
                          ),
                          child: Text(
                            "السعر : ${product.price} \$",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
