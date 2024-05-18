import 'package:flutter/material.dart';
import 'package:tasiwebapp/model/teammember.dart';
import 'package:tasiwebapp/views/members/teammemberdetailpage.dart';
import 'package:tasiwebapp/widgets/navigation_bar/navigation_home_bar.dart';

class Teammemberspage extends StatelessWidget {
  const Teammemberspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const NavigationHomeBar()),
      body: ListView.builder(
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
                        TeamMemberDetailPage(teamMember: teamMember)),
              );
            },
          );
        },
      ),
    );
  }
}
