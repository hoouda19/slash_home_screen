import 'package:flutter/material.dart';
import 'package:slash_app/presentation/widgets/text_widget.dart';

class TitleRowWidget extends StatelessWidget {
  final String title;
  const TitleRowWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: title,
          weight: FontWeight.bold,
          size: 22,
        ),
        TextButton.icon(
            onPressed: () {},
            iconAlignment: IconAlignment.end,
            icon: Card(
                color: const Color.fromARGB(130, 228, 228, 228),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(Icons.arrow_forward_ios)),
            label: const TextWidget(
              text: 'See all',
              size: 14,
            )),
      ],
    );
  }
}
