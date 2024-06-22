import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController(viewportFraction: 0.8);
    var mediaQuery = MediaQuery.sizeOf(context);

    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          !(constraints.maxWidth > 600)
              ? SizedBox(
                  height: mediaQuery.height / 5,
                  child: PageView.builder(
                    itemCount: 2,
                    controller: _controller,
                    itemBuilder: (context, index) {
                      return ListenableBuilder(
                        listenable: _controller,
                        builder: (context, child) {
                          double factor = 1;
                          if (_controller.position.hasContentDimensions) {
                            factor = 1 - (_controller.page! - index).abs();
                          }

                          return Center(
                            child: SizedBox(
                              height: 100 + (factor * 30),
                              child: Image.asset(
                                'assets/images/banar.png',
                                // fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/banar.png',
                    fit: BoxFit.cover,
                    height: mediaQuery.height / 2,
                  ),
                ),
          DotsIndicator(
            dotsCount: 2,
            position: 0,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            decorator: DotsDecorator(
              color: Colors.grey,
              activeColor: Colors.black,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              spacing: EdgeInsets.only(right: 3),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
        ],
      ),
    );
  }
}
