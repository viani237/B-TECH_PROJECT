import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'package:trusty/src/auth/widgets/slide.dart';
import 'package:trusty/src/constants/decoration.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final LiquidController _liquidController = LiquidController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LiquidSwipe(
        liquidController: _liquidController,
        waveType: WaveType.liquidReveal,
        enableLoop: false,

        pages: [
          SlidePage1(
            width: width,
            height: height,
            smallTitle:
                "With Trusty, you can easily and quickly track all your expenses. Enjoy full control over your finances.",
            title: "Welcome to Trusty",
            btnText: "Next",
            image: illustration1,
            onNextPage: () {
              _liquidController.animateToPage(
                page: 1,
                
           
              );
            },

           
          ),
          SlidePage2(
            width: width,
            height: height,
            smallTitle:
                "Mbam provides easy access to all your financial information at your fingertips. Start managing your finances more efficiently.",
            title: "Your finances, at your fingertips",
            image: illustration2,
            btnText: "Get Started",
          ),
        ],
      ),
    );
  }
}
