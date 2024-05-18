class TeamMember {
  final String name;
  final String role;
  final String photoUrl;

  TeamMember({required this.name, required this.role, required this.photoUrl});
}

final List<TeamMember> teamMembers = [
  TeamMember(
      name: 'Alice Smith',
      role: 'Project Manager',
      photoUrl: '/assets/forest.png'),
  TeamMember(
      name: 'Bob Johnson', role: 'Developer', photoUrl: '/assets/forest.png'),
  // Add more team members
];
