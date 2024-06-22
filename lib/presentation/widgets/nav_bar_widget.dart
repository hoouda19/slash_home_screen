import 'package:flutter/material.dart';
import 'package:slash_app/presentation/constants/icons_lists.dart';
import 'package:slash_app/presentation/widgets/text_widget.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: NavBarItems.map((value) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        value['icon']!,
                        color: Colors.black,
                      ),
                      TextWidget(
                        text: value['text']!,
                        size: 14,
                      )
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Container(
          height: 6,
          decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          width: mediaQuery.width / 4,
        ),
      ],
    );
  }
}
