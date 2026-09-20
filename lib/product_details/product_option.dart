import 'package:flutter/material.dart';

class ProductOption extends StatelessWidget {
  const ProductOption({
    super.key,
    required this.title,
    required this.value,
    this.showStars = false,
  });

  final String title;
  final String value;
  final bool showStars;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffeeeeee))),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (showStars)
              const Row(
                children: [
                  Icon(Icons.star, color: Color(0xfff45d48), size: 17),
                  Icon(Icons.star, color: Color(0xfff45d48), size: 17),
                  Icon(Icons.star, color: Color(0xfff45d48), size: 17),
                  Icon(Icons.star, color: Color(0xfff45d48), size: 17),
                  Icon(Icons.star, color: Color(0xfff45d48), size: 17),
                ],
              )
            else
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xff7c7c7c),
                  fontSize: 13,
                ),
              ),
            const SizedBox(width: 12),
            const Icon(Icons.chevron_right, size: 22),
          ],
        ),
      ),
    );
  }
}
