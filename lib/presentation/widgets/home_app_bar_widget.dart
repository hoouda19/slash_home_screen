import 'package:flutter/material.dart';
import 'package:slash_app/presentation/widgets/text_widget.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const TextWidget(
            text: 'Slash.',
            weight: FontWeight.bold,
          ),
          SizedBox(
            height: 60,
            width: 200,
            child: ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              leading: Image.asset('assets/icons/location.png'),
              title: const TextWidget(
                text: 'Nasr City',
                size: 18,
                textalign: TextAlign.left,
              ),
              subtitle: const TextWidget(
                text: 'Cairo',
                size: 18,
                textalign: TextAlign.left,
                weight: FontWeight.bold,
              ),
              trailing: const Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
              dense: true,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Image.asset('assets/icons/notifcation_icon.png')),
        ],
      ),
    );
  }
}
