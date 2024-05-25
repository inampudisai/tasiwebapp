import 'package:flutter/material.dart';
import 'package:tasiwebapp/padding/responsive_padding.dart';
import 'package:tasiwebapp/views/admin/login.dart';
import 'package:tasiwebapp/views/home/home_view.dart';
import 'package:tasiwebapp/views/members/teammemberspage.dart';
import 'package:tasiwebapp/views/others/contact_view.dart';
import 'package:tasiwebapp/views/others/sponsers_view.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  List pages = [
    HomeView(),
    TeamMembersPage(),
    LoginScreen(),
    SponsersView(),
    ContactView(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ResponsivePadding(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: pages[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.blue,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label: 'Members', icon: Icon(Icons.group)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings_applications)),
            BottomNavigationBarItem(
                label: 'Sponsers', icon: Icon(Icons.groups)),
            BottomNavigationBarItem(
                label: 'Contact us', icon: Icon(Icons.contact_page)),
          ],
        ),
      ),
    );
  }
}
