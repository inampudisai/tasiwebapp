import "package:flutter/material.dart";
import "package:tasiwebapp/model/teammember.dart";
import "package:tasiwebapp/widgets/navigation_bar/header_bar.dart";

class TeamMemberDetailPage extends StatelessWidget {
  final TeamMember teamMember;

  const TeamMemberDetailPage({required this.teamMember});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: HeaderBar()),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(teamMember.photoUrl),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                teamMember.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                teamMember.role,
                style:
                    const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 16),
              // Add more details if needed
              Text(
                'Additional details about ${teamMember.name} can be placed here.',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
