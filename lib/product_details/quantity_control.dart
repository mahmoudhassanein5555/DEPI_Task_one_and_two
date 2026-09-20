import 'package:flutter/material.dart';

class QuantityControl extends StatelessWidget {
  const QuantityControl({
    super.key,
    required this.quantity,
    required this.onDecrease,
    required this.onIncrease,
  });

  final int quantity;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onDecrease,
          icon: const Icon(Icons.remove, color: Color(0xffb4b4b4)),
          tooltip: 'Decrease quantity',
        ),
        Container(
          height: 44,
          width: 44,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffe5e5e5)),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            '$quantity',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        IconButton(
          onPressed: onIncrease,
          icon: const Icon(Icons.add, color: Color(0xff53b175)),
          tooltip: 'Increase quantity',
        ),
        const Spacer(),
        const Text(
          '\$4.99',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
