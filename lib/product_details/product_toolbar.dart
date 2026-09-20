import 'package:flutter/material.dart';

class ProductToolbar extends StatelessWidget {
  const ProductToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.maybePop(context),
            icon: const Icon(Icons.arrow_back_ios_new, size: 20),
            tooltip: 'Back',
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ios_share_outlined, size: 22),
            tooltip: 'Share',
          ),
        ],
      ),
    );
  }
}
