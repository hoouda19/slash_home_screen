import 'package:flutter/material.dart';
import 'package:slash_app/presentation/constants/icons_lists.dart';
import 'package:slash_app/presentation/widgets/text_widget.dart';

class HomeCategoriesListWidget extends StatelessWidget {
  const HomeCategoriesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: CategoriesMap.map((value) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: Image.asset(value['icon']!),
                ),
                TextWidget(
                  text: value['text']!,
                  size: 14,
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
