import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ftai_ecomerce/common/widgets/text_widget.dart';
import 'package:ftai_ecomerce/pages/notifier/welcome_notifier.dart';
import 'package:ftai_ecomerce/pages/welcome/widgets.dart';

//final indexProvider = StateProvider<int>((ref)=>0);

class Welcome extends ConsumerWidget{
  Welcome({super.key});
  
  final PageController _controller = PageController();
  //int dotsIndex = 0;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
           body: Container(
            margin: const EdgeInsets.only(top: 30),
             child: Stack(
              alignment: Alignment.topCenter,
              children: [
                  PageView( 
                    onPageChanged:(value) {
                       ref.read(indexDotProvider.notifier).changeIndex(value);
                    },
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                       appOnboardingPage(
                        _controller, 
                        imagePath: "assets/images/6.png", title: "Magnetic love", Subtitle: "This will limit the height of the image to the specified value, while maintaining the aspect ratio of the image. If you want to crop the image to a specific", index: 1,context,
                       ),
                     
                       appOnboardingPage(
                        _controller,
                         imagePath: "assets/images/4.png", title: "Magnetic love", Subtitle: "This will limit the height of the image to the specified value, while maintaining the aspect ratio of the image. If you want to crop the image to a specific", index: 2,context,
                       ),
                     
                        appOnboardingPage(
                          _controller,
                         imagePath: "assets/images/3.png", title: "Magnetic love", Subtitle: "This will limit the height of the image to the specified value, while maintaining the aspect ratio of the image. If you want to crop the image to a specific", index: 3,context,
                       )
                    ], 
                   ),
                   //dots indicators
                 Positioned(
                  child: DotsIndicator(
                    position: index,
                    dotsCount: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    decorator: DotsDecorator(
                       size: const Size.square(9.0),
                       activeSize: const Size(22.0, 8.0),
                       activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                       )
                    ),
                    ),
                  bottom: 100, 
                  ),
              ],
             ),
           ),
        ),
      ),
    );
  }
}