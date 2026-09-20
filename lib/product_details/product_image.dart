import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Image.network(
        'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?auto=format&fit=crop&w=700&q=85',
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => const AppleFallback(),
      ),
    );
  }
}

class AppleFallback extends StatelessWidget {
  const AppleFallback({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('🍎', style: TextStyle(fontSize: 160)));
  }
}
