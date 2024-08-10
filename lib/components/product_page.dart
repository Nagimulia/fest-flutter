import 'package:flutter/material.dart';
import 'package:task/models/product.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(widget.product.imagePath),
          Text(widget.product.name),
          Text(widget.product.description),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CheckboxListTile(value: false, onChanged: (value) {});
              })
        ],
      ),
    );
  }
}
