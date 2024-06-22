import 'package:flutter/material.dart';

import 'package:slash_app/presentation/widgets/text_widget.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        label: const TextWidget(
          text: 'Search here',
          size: 20,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: const Color.fromARGB(130, 228, 228, 228),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}
