import 'package:flutter/material.dart';
import 'package:tasiwebapp/widgets/navigation_bar/header_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PageController _pageController = PageController();
  List images = [
    'assets/images/tasi_group1.jpg',
    'assets/images/tasi_group2.jpg',
    'assets/images/tasi_group3.jpg',
  ];
  List mobImages = [
    'assets/images/tasi_group1_mob.jpg',
    'assets/images/tasi_group2_mob.jpg',
    'assets/images/tasi_group3_mob.jpg',
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _nextPage() {
    if (currentIndex < images.length - 1) {
      _pageController.animateToPage(
        currentIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentIndex = _pageController.page!.toInt();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(title: const HeaderBar()),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: width,
        height: height,
        child: Column(
          children: [
            Expanded(
              child: (size.width >= 600)
                  ? PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          key: const ValueKey('homeScreenImageId'),
                          images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      },
                    )
                  : PageView.builder(
                      controller: _pageController,
                      itemCount: mobImages.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          key: const ValueKey('homeScreenImageId'),
                          mobImages[index],
                          fit: BoxFit.fitWidth,
                        );
                      },
                    ),
            ),
            if (currentIndex < images.length - 1)
              ElevatedButton(
                onPressed: _nextPage,
                child: const Text(key: ValueKey('homeNextButtonId'), 'Next'),
              ),
          ],
        ),
      ),
    );
  }
}
