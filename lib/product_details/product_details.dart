import 'package:flutter/material.dart';

import 'basket_button.dart';
import 'product_description.dart';
import 'product_header.dart';
import 'product_image.dart';
import 'product_option.dart';
import 'product_toolbar.dart';
import 'quantity_control.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 1;
  bool isFavorite = false;

  void increaseQuantity() {
    setState(() => quantity++);
  }

  void decreaseQuantity() {
    if (quantity == 1) return;
    setState(() => quantity--);
  }

  void addToBasket() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$quantity apple added to your basket')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const ProductToolbar(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProductImage(),
                    ProductHeader(
                      isFavorite: isFavorite,
                      onFavoritePressed: () {
                        setState(() => isFavorite = !isFavorite);
                      },
                    ),
                    QuantityControl(
                      quantity: quantity,
                      onDecrease: decreaseQuantity,
                      onIncrease: increaseQuantity,
                    ),
                    const ProductDescription(),
                    const ProductOption(title: 'Nutritions', value: '100g'),
                    const ProductOption(
                      title: 'Review',
                      value: '4.5',
                      showStars: true,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            BasketButton(onPressed: addToBasket),
          ],
        ),
      ),
    );
  }
}
