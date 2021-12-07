import 'package:appcomoencasa/presentation/pages/introduccion/intro.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro2.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro3.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro4.dart';
import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  static Widget create(BuildContext context) => IntroScreen();
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Login())),
            child: const Text(
              '|SALTAR|',
              style: TextStyle(
                backgroundColor: Colors.amber,
                color: Colors.black,
              ),
            ),
          ),
        ],
        title: const Text('App Como en casa'),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16),
            SizedBox(
                height: 600,
                child: PageView(
                  controller: _pageController,
                  children: const [
                    Intro(),
                    Intro2(),
                    Intro3(),
                    Intro4(),
                  ],
                )),
            Container(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: SwapEffect(
                  activeDotColor: Colors.pink,
                  dotColor: Colors.grey,
                  dotHeight: 16,
                  dotWidth: 16,
                  type: SwapType.yRotation,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
