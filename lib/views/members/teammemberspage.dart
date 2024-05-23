import 'package:flutter/material.dart';
import 'package:tasiwebapp/model/teammember.dart';
import 'package:tasiwebapp/views/members/teammemberdetailpage.dart';
import 'package:tasiwebapp/widgets/navigation_bar/header_bar.dart';

class Teammemberspage extends StatelessWidget {
  const Teammemberspage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: HeaderBar()),
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView.builder(
          itemCount: teamMembers.length,
          itemBuilder: (context, index) {
            final teamMember = teamMembers[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(teamMember.photoUrl, scale: 100),
              ),
              title: Text(
                teamMember.name,
              ),
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
      ),
    );
  }
}
