import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final PageController _pageController = PageController();
  double _currentPage = 0;
  List<Widget> pages = [pageOne(), pageTwo(), pageThree()];

  Widget buildPage(String text) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return pages[index];
            },
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index.toDouble();
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DotsIndicator(
              dotsCount: pages.length,
              position: _currentPage,
              decorator: const DotsDecorator(
                color: Colors.grey, // Inactive dot color
                activeColor: Colors.blue, // Active dot color
                size: Size.square(9.0),
                activeSize: Size(29.0, 17.0),
                spacing: EdgeInsets.all(30.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget pageOne() {
  return Column(
    children: [
      Image.asset(
        'assets/images/page01.jpg',
      ),
      const Text(
        'Save your Money for\n free and get rewards',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w900, color: Colors.indigo),
      )
    ],
  );
}

Widget pageTwo() {
  return Column(
    children: [
      Image.asset(
        'assets/images/page02.jpg',
      ),
      const Text(
        'Save Your Money\n Convniently',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w900, color: Colors.indigo),
      )
    ],
  );
}

Widget pageThree() {
  return Column(
    children: [
      Image.asset(
        'assets/images/page03.jpg',
      ),
      const Text(
        'Enjoy Comission-Free stock trading',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w900, color: Colors.indigo),
      )
    ],
  );
}
