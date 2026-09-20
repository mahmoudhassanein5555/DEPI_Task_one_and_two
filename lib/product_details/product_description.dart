import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(color: Color(0xffe8e8e8)),
          SizedBox(height: 7),
          Text(
            'Product Detail',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),
          Text(
            'Apples Are Nutritious. Apples May Be Good For Weight Loss. '
            'Apples May Be Good For Your Heart. As Part Of A Healthy And Varied Diet.',
            style: TextStyle(
              color: Color(0xff858585),
              fontSize: 12,
              height: 1.45,
            ),
          ),
        ],
      ),
    );
  }
}
