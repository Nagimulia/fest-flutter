import 'package:flutter/material.dart';
import 'package:task/models/product.dart';
import 'package:task/provider/favorite_provider.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final void Function()? onTap;
  const ProductTile({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          provider.toggleFavorite(product);
                        },
                        child: Icon(provider.isExist(product)
                            ? Icons.favorite
                            : Icons.favorite_border, color: Colors.red,),
                      ),
                      Text(product.name),
                      Text(
                        '₽${product.price}',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product.imagePath,
                    height: 120,
                  ),
                )
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
