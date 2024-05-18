import 'package:flutter/material.dart';
import 'package:tasiwebapp/model/teammember.dart';
import 'package:tasiwebapp/views/members/teammemberdetailpage.dart';
import 'package:tasiwebapp/views/members/teammemberspage.dart';
import 'package:tasiwebapp/views/others/contact_view.dart';
import 'package:tasiwebapp/views/others/settings_view.dart';
import 'package:tasiwebapp/views/others/sponsers_view.dart';
import 'package:tasiwebapp/widgets/centered_view/centered_view.dart';
import 'package:tasiwebapp/widgets/navigation_bar/navigation_home_bar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Teammemberspage(),
    SettingsView(),
    ContactView(),
    SponsersView(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const NavigationHomeBar()),
      body: CenteredView(
        child: ListView.builder(
          itemCount: teamMembers.length,
          itemBuilder: (context, index) {
            final teamMember = teamMembers[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(teamMember.photoUrl),
              ),
              title: Text(teamMember.name),
              subtitle: Text(teamMember.role),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TeamMemberDetailPage(teamMember: teamMember),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
