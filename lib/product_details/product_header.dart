import 'package:flutter/material.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
    required this.isFavorite,
    required this.onFavoritePressed,
  });

  final bool isFavorite;
  final VoidCallback onFavoritePressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Naturel Red Apple',
                style: TextStyle(
                  color: Color(0xff20212b),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '1kg, Price',
                style: TextStyle(
                  color: Color(0xff7c7c7c),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: onFavoritePressed,
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite
                ? const Color(0xfff45d48)
                : const Color(0xff7c7c7c),
            size: 26,
          ),
          tooltip: 'Favorite',
        ),
      ],
    );
  }
}
