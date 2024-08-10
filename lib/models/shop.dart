import 'package:flutter/material.dart';

import 'product.dart';

class Shop extends ChangeNotifier{
  final List<Product> _list = [
    Product(
      name: 'Серьги золото',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/jewelry/1.jpg',
      price: 360,
      category: ProductCategory.jewelry,
    ),
    Product(
      name: 'Серьги серебро, амарант',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/jewelry/2.jpg',
      price: 736,
      category: ProductCategory.jewelry,
    ),
    Product(
      name: 'Серьги золото, бриллианты',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/jewelry/3.jpg',
      price: 1236,
      category: ProductCategory.jewelry,
    ),
    Product(
      name: 'Серьги круг',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/jewelry/4.jpg',
      price: 650,
      category: ProductCategory.jewelry,
    ),
    Product(
      name: 'Куртка',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/men fashion/man jacket.png',
      price: 236,
      category: ProductCategory.men,
    ),
    Product(
      name: 'Брюки',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/men fashion/pants.png',
      price: 236,
      category: ProductCategory.men,
    ),
    Product(
      name: 'Рубашка',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/men fashion/shert.png',
      price: 236,
      category: ProductCategory.men,
    ),
    Product(
      name: 'Футболка',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/men fashion/t-shirt.png',
      price: 236,
      category: ProductCategory.men,
    ),
    Product(
      name: 'Air Jordan',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/shoes/Air Jordan.png',
      price: 236,
      category: ProductCategory.shoes,
    ),
    Product(
      name: 'New Balance',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/shoes/New Balance 990.png',
      price: 236,
      category: ProductCategory.shoes,
    ),
    Product(
      name: 'Vans old school',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/shoes/vans old skool.png',
      price: 26,
      category: ProductCategory.shoes,
    ),
    Product(
      name: 'Платье',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/women fashion/lehenga.png',
      price: 15,
      category: ProductCategory.women,
    ),
    Product(
      name: 'Брюки',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/women fashion/pants.png',
      price: 46,
      category: ProductCategory.women,
    ),
    Product(
      name: 'Футболка',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard',
      imagePath: 'images/women fashion/t-shert.png',
      price: 26,
      category: ProductCategory.women,
    ),
  ];

  List<Product> get list => _list;


}

