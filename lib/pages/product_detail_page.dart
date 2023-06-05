// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/Product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product product =
        // Get the product through the argument passed on product_item route call
        // which is kept in the settings of ModalRoute.of(context)
        ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        centerTitle: true,
      ),
    );
  }
}
